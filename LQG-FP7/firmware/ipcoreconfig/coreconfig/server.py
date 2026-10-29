#!/usr/bin/env python3

import argparse
import logging
import base64
from flask import Flask, request, jsonify

from cclib import load_ipcores_from_file, matlab_to_config
from cclib.memory_map import DMATriggerSource

app = Flask("coreconfig-server")

def _setup_logging():
    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')

_setup_logging()

@app.route("/api/ping", methods=["GET"])
def ping():
    return jsonify({"message": "pong"}), 200

@app.route("/api/ipcore", methods=["GET"])
def get_ipcore():
    return jsonify({"ipcore_name": app.ip_core.ip_name}), 200

@app.route("/api/update_config", methods=["POST"])
def update_config():
    data = request.json
    if not data or "payload" not in data or "type" not in data:
        return jsonify({"error": "Invalid request"}), 400
    
    match data["type"]:
        case "matlab-json":
            try:
                print(data["payload"])
                config_bits = matlab_to_config(app.ip_core, data["payload"])
            except Exception as e:
                return jsonify({"error": "Matlab -> Config: " + str(e)}), 400

        case _:
            return jsonify({"error": "Unsupported configuration type"}), 400
    
    try:
        app.ip_core.memory_map.write_config(config_bits)
    except Exception as e:
        return jsonify({"error": "MMap Write: " + str(e)}), 500

    return jsonify({"message": "Configuration updated successfully"}), 200

@app.route("/api/axi_mappings", methods=["POST"])
def axi_mappings():
    data = request.json
    if not data or "id" not in data or "bus" not in data:
        return jsonify({"error": "Invalid request"}), 400
    
    axi_bus = data["bus"]
    signal_id = data["id"]

    if axi_bus not in app.ip_core.axi_interfaces:
        return jsonify({"error": f"AXI bus '{axi_bus}' does not exist."}), 404
    if axi_bus not in app.ip_core.memory_map.axi_mappings:
        return jsonify({"error": f"AXI mapping for '{axi_bus}' does not exist."}), 404
    
    axi_bus_obj = app.ip_core.axi_interfaces[axi_bus]

    if "value" not in data: # Read request
        if signal_id not in axi_bus_obj.outputs and signal_id not in axi_bus_obj.inputs:
            return jsonify({"error": f"Signal ID '{signal_id}' does not exist in AXI bus '{axi_bus}' outputs."}), 404
        
        if signal_id in axi_bus_obj.outputs:
            mapping = axi_bus_obj.outputs[signal_id]
        else:
            mapping = axi_bus_obj.inputs[signal_id]
        
        try:
            value = app.ip_core.memory_map.axi_mapping_read_value(axi_bus, mapping.offset, mapping.datatype)
        except Exception as e:
            return jsonify({"error": f"Error reading value from AXI mapping: {str(e)}"}), 500

        return jsonify({
            "id": signal_id,
            "offset": mapping.offset,
            "datatype": {
                "size": mapping.datatype.size,
                "signed": mapping.datatype.signed,
                "fixpt_bin": mapping.datatype.fixpt_bin
            },
            "value": value
        }), 200
    
    else: # Write request
        if signal_id not in axi_bus_obj.inputs:
            return jsonify({"error": f"Signal ID '{signal_id}' does not exist in AXI bus '{axi_bus}' inputs."}), 404
        
        if not isinstance(data["value"], (int, float)):
            return jsonify({"error": "Value must be an integer or float."}), 400
        
        mapping = axi_bus_obj.inputs[signal_id]

        try:
            app.ip_core.memory_map.axi_mapping_write_value(axi_bus, mapping.offset, mapping.datatype, data["value"])#
        except Exception as e:
            return jsonify({"error": f"Error writing value to AXI mapping: {str(e)}"}), 500
        
        return jsonify({
            "id": signal_id,
            "offset": mapping.offset,
            "datatype": {
                "size": mapping.datatype.size,
                "signed": mapping.datatype.signed,
                "fixpt_bin": mapping.datatype.fixpt_bin
            },
            "value": data["value"]
        }), 200

@app.route("/api/dma/config", methods=["POST"])
def dma_config():
    data = request.json

    if not app.ip_core.memory_map.dma_mapping:
        return jsonify({"error": "No DMA mapping available for this IP core."}), 404

    if not data or "frames" not in data or "decimation" not in data or "channels" not in data or "trigger_source" not in data:
        return jsonify({"error": "Invalid request body"}), 400
    
    if not isinstance(data["channels"], list) or not isinstance(data["trigger_source"], str):
        return jsonify({"error": "Invalid data types in request body"}), 400
    
    frames = int(data["frames"])
    decimation = int(data["decimation"])
    channels = set()
    for ch in data["channels"]:
        if not isinstance(ch, int):
            return jsonify({"error": "Channel list must contain integers only"}), 400
        if ch < 0 or ch > 7:
            return jsonify({"error": "Channel values must be between 0 and 7"}), 400
        if ch in channels:
            return jsonify({"error": f"Duplicate channel value: {ch}"}), 400
        channels.add(ch)

    trigger_source = data["trigger_source"]
    match trigger_source:
        case "software":
            trigger_enum = DMATriggerSource.SOFTWARE
        case "external":
            trigger_enum = DMATriggerSource.EXTERNAL
        case _:
            return jsonify({"error": f"Invalid trigger source: {trigger_source}"}), 400

    try:
        app.ip_core.memory_map.dma_mapping.dma_transfer_config(frames, decimation, channels, trigger_enum)
    except Exception as e:
        return jsonify({"error": f"DMA Transfer Config: {str(e)}"}), 500
    
    return jsonify({"message": "DMA transfer configured successfully"}), 200

@app.route("/api/dma/status", methods=["POST"])
def dma_status():
    if not app.ip_core.memory_map.dma_mapping:
        return jsonify({"error": "No DMA mapping available for this IP core."}), 404

    try:
        core_status, desc_statuses = app.ip_core.memory_map.dma_mapping.dma_get_status()
        core_status_flags = [flag.label for flag in core_status if flag.value]
        desc_status_flags = [[flag.label for flag in desc_status if flag.value] for desc_status in desc_statuses]
        return jsonify({"status": core_status_flags, "descriptors": desc_status_flags}), 200
    except Exception as e:
        return jsonify({"error": f"DMA Transfer Status: {str(e)}"}), 500
    
@app.route("/api/dma/wait", methods=["POST"])
def dma_wait():
    data = request.json

    if not app.ip_core.memory_map.dma_mapping:
        return jsonify({"error": "No DMA mapping available for this IP core."}), 404

    timeout_seconds = None
    if data and "timeout_seconds" in data:
        if not isinstance(data["timeout_seconds"], (int, float)):
            return jsonify({"error": "timeout_seconds must be a number"}), 400
        timeout_seconds = float(data["timeout_seconds"])

    try:
        app.ip_core.memory_map.dma_mapping.dma_wait_cplt_sync(timeout_seconds)
    except TimeoutError as e:
        return jsonify({"error": f"DMA Transfer Wait Timeout: {str(e)}"}), 504
    except Exception as e:
        return jsonify({"error": f"DMA Transfer Wait: {str(e)}"}), 500

    return jsonify({"message": "DMA transfer completed successfully"}), 200

@app.route("/api/dma/zero_target_mem", methods=["POST"])
def dma_zero_target_mem():
    if not app.ip_core.memory_map.dma_mapping:
        return jsonify({"error": "No DMA mapping available for this IP core."}), 404

    try:
        app.ip_core.memory_map.dma_mapping.dma_zero_target_mem()
    except Exception as e:
        return jsonify({"error": f"DMA Zero Target Mem: {str(e)}"}), 500

    return jsonify({"message": "DMA target memory zeroed successfully"}), 200

@app.route("/api/dma/data", methods=["POST"])
def dma_data():
    data = request.json

    if not app.ip_core.memory_map.dma_mapping:
        return jsonify({"error": "No DMA mapping available for this IP core."}), 404
    
    if not data or "offset" not in data or "length" not in data:
        return jsonify({"error": "Invalid request body"}), 400
    
    offset = int(data["offset"])
    length = int(data["length"])
    
    try:
        dma_data = app.ip_core.memory_map.dma_mapping.dma_read_mem(offset, length)
    except Exception as e:
        return jsonify({"error": f"DMA Read Data: {str(e)}"}), 500
    
    return jsonify({"data": base64.b64encode(dma_data).decode('utf-8')}), 200

def main():
    parser = argparse.ArgumentParser(
        description="CoreConfig Server - A simple REST API for interacting with IP cores."
    )

    parser.add_argument("ip_description_file", type=str, help="Path to the IP description file (YAML format).")
    parser.add_argument("--core", dest="core", type=str, help="Name of the IP core to operate on if multiple are contained within the IP description file.")
    parser.add_argument("--port", type=int, default=5000, help="Port to run the server on.")
    parser.add_argument("--host", type=str, default="0.0.0.0", help="Host to bind the server to.")

    args = parser.parse_args()

    # Load the IP core to operate on.
    ip_cores = load_ipcores_from_file(args.ip_description_file)

    if len(ip_cores) == 0:
        print(f"Error: No IP cores found in the file '{args.ip_description_file}'.")
        exit(1)

    if args.core:
        ip_core = next((core for core in ip_cores if core.ip_name == args.core), None)
        if not ip_core:
            print(f"Error: IP core '{args.core}' not found in the file '{args.ip_description_file}'.")
            exit(1)
    else:
        if len(ip_cores) > 1:
            print(f"Error: Multiple IP cores found in the file '{args.ip_description_file}'. Please specify one with --core.")
            exit(1)
        ip_core = ip_cores[0]
    
    assert ip_core is not None, "IP core must be defined."

    app.ip_core = ip_core
    app.run(host=args.host, port=args.port)


if __name__ == "__main__":
    main()