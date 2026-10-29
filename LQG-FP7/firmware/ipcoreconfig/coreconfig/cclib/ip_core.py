from typing import List

from .ip_type import IPTypeRegistry
from .ip_io import IPIOConfigMapping, IPIOSignalMapping, IPIO
from .ip_config_map import IPConfigMap, IPConfigMapEntry
from .ip_verilog_factory import IPCoreVerilogFactory
from .axi_if import AXIInterface, AXIOffsetMapping
from .memory_map import MemoryMap, MemoryMapping, DMAMapping

def _memory_mapping_from_cfg(cfg: dict) -> MemoryMapping:
    if "base" not in cfg or "size" not in cfg:
        raise ValueError("Invalid memory mapping configuration: must specify 'base' and 'size'.")
    return MemoryMapping(cfg["base"], cfg["size"])

class IPCore:
    def __init__(self, ip_name: str):
        self.ip_name = ip_name
        self.ipcore_type_name = ip_name
        self.passthrough_axi = False
        self.inputs = {}
        self.outputs = {}
        self.axi_interfaces = {}
        self.memory_map = MemoryMap()

    def from_config(self, config: dict, type_registry: IPTypeRegistry):
        if "inputs" in config:
            for k, v in config["inputs"].items():
                self.add_io_from_config("input", k.lower(), v, type_registry)
        if "outputs" in config:
            for k, v in config["outputs"].items():
                self.add_io_from_config("output", k.lower(), v, type_registry)
        
        if "ipcore_type_name" in config:
            self.ipcore_type_name = config["ipcore_type_name"]

        if "passthrough_axi" in config:
            self.passthrough_axi = config["passthrough_axi"]

        if "axi_interfaces" in config:
            for axi_name, axi_config in config["axi_interfaces"].items():
                self.add_axi_from_config(axi_name.lower(), axi_config, type_registry)

        if "memory_map" in config:
            self.add_memory_mappings_from_config(config["memory_map"])

    def add_io_from_config(self, io_type: str, io_name: str, config: dict, type_registry: IPTypeRegistry):
        if io_name in self.inputs or io_name in self.outputs:
            raise KeyError(f"An I/O with name '{io_name}' already exists in this IP core.")
        
        datatype = type_registry.get_type(config["datatype"])
        ssr = config["ssr"] if "ssr" in config else 1
        attributes = config["attributes"] if "attributes" in config else {}

        # Check for external signal routing of this interface
        signal_route = None
        if "config_map" in config:
            # Only "input" singals are possible to be connected to a config map.
            if io_type != "input":
                raise ValueError("Cannot hook up non-input type IO signal to the configuration map.")
            # Signal is connected to the configuration map.
            cm_config = config["config_map"]
            if not "offset" in cm_config:
                raise ValueError("Invalid configuration map: No 'offset' specified.")
            cm_offset = cm_config["offset"]
            cm_stride = cm_config["stride"] if "stride" in cm_config else datatype.size  # Default stride value is the datatype size.
            signal_route = IPIOConfigMapping(cm_offset, cm_stride)
        elif "signal_map" in config:
            # Signal is exposed to outside (externally mapped signal).
            sm_config = config["signal_map"]
            if not "name" in sm_config:
                raise ValueError("Invalid signal map: No 'name' for signal specified.")
            sm_name = sm_config["name"]
            sm_ssr_pack = sm_config["ssr_pack"] if "ssr_pack" in sm_config else False
            sm_active_low = sm_config.get("active_low", False)
            sm_is_clock = sm_config.get("is_clock", False)
            sm_freq = sm_config.get("freq", None)  # Frequency in Hz, if applicable
            signal_route = IPIOSignalMapping(sm_name, sm_ssr_pack, sm_active_low, sm_is_clock, sm_freq)

        io = IPIO(datatype, ssr, signal_route, attributes)

        if io_type == "input":
            self.inputs[io_name] = io
        elif io_type == "output":
            self.outputs[io_name] = io
        else:
            raise ValueError("Invalid io_type specified.")

    def add_axi_from_config(self, axi_name: str, config: dict, type_registry: IPTypeRegistry) -> None:
        if axi_name in self.axi_interfaces:
            raise KeyError(f"AXI interface with name '{axi_name}' already exists.")
        
        if "data_width" not in config or "addr_width" not in config or "clock" not in config:
            raise ValueError("AXI interface configuration must specify 'data_width' and 'addr_width'.")
        
        data_width = config["data_width"]
        addr_width = config["addr_width"]
        clock_signal = config["clock"]

        if clock_signal not in self.inputs:
            raise ValueError(f"Clock signal '{clock_signal}' must be defined as an input in the IP core.")
        
        freq = self.inputs[clock_signal].signal_route.freq if isinstance(self.inputs[clock_signal].signal_route, IPIOSignalMapping) else None
        if freq is None:
            raise ValueError(f"Clock signal '{clock_signal}' must have a frequency defined in its signal map.")

        axi_interface = AXIInterface(data_width, addr_width, clock_signal, freq)

        merged_axi_ifs = []
        [merged_axi_ifs.append(("input", k, v)) for k, v in config.get("inputs", {}).items()]
        [merged_axi_ifs.append(("output", k, v)) for k, v in config.get("outputs", {}).items()]

        for t, k, v in merged_axi_ifs:
            if "datatype" not in v or "offset" not in v:
                raise ValueError(f"Invalid AXI configuration for I/O node '{k}': must specify 'datatype' and 'offset'.")
            
            datatype = type_registry.get_type(v["datatype"])
            offset = v["offset"]

            mapping = AXIOffsetMapping(offset, datatype)

            if t == "input":
                axi_interface.add_input(k.lower(), mapping)
            elif t == "output":
                axi_interface.add_output(k.lower(), mapping)
            else:
                raise ValueError(f"Invalid AXI I/O type '{t}' for node '{k}'.")

        self.axi_interfaces[axi_name] = axi_interface
    
    def add_memory_mappings_from_config(self, config: dict) -> None:
        if "config_ram" in config:
            cfgram_mapping = _memory_mapping_from_cfg(config["config_ram"])
            self.memory_map.add_cfgram_mapping(cfgram_mapping)

        if "loader" in config:
            loader_mapping = _memory_mapping_from_cfg(config["loader"])
            self.memory_map.add_loader_mapping(loader_mapping)

        for axi_name, axi_config in config.get("axi", {}).items():
            if axi_name not in self.axi_interfaces:
                raise ValueError(f"AXI interface '{axi_name}' must be defined before adding memory mappings.")
            axi_mapping = _memory_mapping_from_cfg(axi_config)
            self.memory_map.add_axi_mapping(axi_name, axi_mapping)

        if "dma" in config:
            if not "bram" in config["dma"] or not "throttle" in config["dma"] or not "dmacore" in config["dma"] or not "dma_target" in config["dma"]:
                raise ValueError("DMA mapping must specify 'bram', 'throttle', 'dmacore', and 'dma_target' mappings.")
            bram_mapping = _memory_mapping_from_cfg(config["dma"]["bram"])
            throttle_mapping = _memory_mapping_from_cfg(config["dma"]["throttle"])
            dmacore_mapping = _memory_mapping_from_cfg(config["dma"]["dmacore"])
            dma_target_mapping = _memory_mapping_from_cfg(config["dma"]["dma_target"])
            dma_mapping = DMAMapping(bram_mapping, throttle_mapping, dmacore_mapping, dma_target_mapping)
            self.memory_map.add_dma_mapping(dma_mapping)

        if not self.memory_map.check_valid():
            raise ValueError("Memory map is invalid: CFGRAM and loader mappings must be defined.")

    def emit_verilog(self, fac: IPCoreVerilogFactory) -> None:
        # AXI Interfaces
        axi_clock_signals = {}

        for axi_name, axi_if in self.axi_interfaces.items():
            AXI_SIGNALS = [
                ("input", "awaddr", axi_if.addr_width, "AWADDR"),
                ("input", "awvalid", 1, "AWVALID"),
                ("output", "awready", 1, "AWREADY"),
                ("input", "wdata", axi_if.data_width, "WDATA"),
                ("input", "wstrb", axi_if.data_width // 8, "WSTRB"),
                ("input", "wvalid", 1, "WVALID"),
                ("output", "wready", 1, "WREADY"),
                ("output", "bresp", 2, "BRESP"),
                ("output", "bvalid", 1, "BVALID"),
                ("input", "bready", 1, "BREADY"),
                ("input", "araddr", axi_if.addr_width, "ARADDR"),
                ("input", "arvalid", 1, "ARVALID"),
                ("output", "arready", 1, "ARREADY"),
                ("output", "rdata", axi_if.data_width, "RDATA"),
                ("output", "rresp", 2, "RRESP"),
                ("output", "rvalid", 1, "RVALID"),
                ("input", "rready", 1, "RREADY")
            ]

            _first = True

            for t, sig_name, bitsize, axi_sig in AXI_SIGNALS:
                _attrs = {"X_INTERFACE_INFO": f"xilinx.com:interface:aximm:1.0 {axi_name} {axi_sig}"}
                if _first:
                    _attrs["X_INTERFACE_PARAMETER"] = f"PROTOCOL AXI4LITE, FREQ_HZ {axi_if.freq}"

                fac.add_module_io(t, False, f"{axi_name}_{sig_name}", bitsize, attributes=_attrs)
                fac.add_ipcore_io(f"{axi_name}_{sig_name}", f"{axi_name}_{sig_name}")
                _first = False

            axi_clock_signals[axi_if.clock_signal] = axi_name

        # External signals
        merged_ios = []
        [merged_ios.append(("input", io_name, io)) for io_name, io in self.inputs.items()]
        [merged_ios.append(("output", io_name, io)) for io_name, io in self.outputs.items()]

        for io_type, io_name, io in merged_ios:
            if not isinstance(io.signal_route, IPIOSignalMapping):
                continue

            if io.ssr == 1:
                # Scalar signal, just direct mapping IPCore <-> Output.
                mio_attribs = {}
                mio_ifparams = []

                if io.signal_route.active_low:
                    mio_ifparams.append("POLARITY ACTIVE_LOW")

                if io.signal_route.is_clock:
                    mio_attribs["X_INTERFACE_INFO"] = f"xilinx.com:signal:clock:1.0 {io.signal_route.ext_signal_name} CLK"

                if io.signal_route.freq is not None:
                    mio_ifparams.append(f"FREQ_HZ {io.signal_route.freq}")

                if io.signal_route.ext_signal_name in axi_clock_signals:
                    mio_ifparams.append(f"ASSOCIATED_BUSIF {axi_clock_signals[io.signal_route.ext_signal_name]}")
                elif io.signal_route.is_clock:
                    # Implement Vivado hack since it sometimes thinks clocks are associated to some bus interfaces even though they are not...
                    mio_ifparams.append(f"ASSOCIATED_BUSIF \\\"\\\"")

                if len(mio_ifparams) > 0:
                    mio_attribs["X_INTERFACE_PARAMETER"] = ", ".join(mio_ifparams)

                fac.add_module_io(io_type, io.datatype.signed, io.signal_route.ext_signal_name, io.datatype.size, attributes=mio_attribs)
                fac.add_ipcore_io(io_name.lower(), io.signal_route.ext_signal_name)

            elif io.signal_route.ssr_pack == True:
                # Vector (SSR) signal, but with packing enabled.
                fac.add_module_io(io_type, False, io.signal_route.ext_signal_name, io.ssr * io.datatype.size)
                for i_ssr in range(io.ssr):
                    ipc_signal_name = f"{io_name.lower()}_{i_ssr}"
                    ext_signal_expr = f"{io.signal_route.ext_signal_name}[{(i_ssr+1)*io.datatype.size - 1}:{i_ssr*io.datatype.size}]"
                    fac.add_ipcore_io(ipc_signal_name, ext_signal_expr)
            else:
                # Vector (SSR) signal, no packing.
                for i_ssr in range(io.ssr):
                    name_template = io.signal_route.ext_signal_name
                    if "%d" not in name_template:
                        name_template += "_%d"
                    ext_signal_expr = name_template % i_ssr
                    ipc_signal_name = f"{io_name.lower()}_{i_ssr}"
                    fac.add_module_io(io_type, io.datatype.signed, ext_signal_expr, io.datatype.size)
                    fac.add_ipcore_io(ipc_signal_name, ext_signal_expr)

        # Hook up the configuration.
        cfg_map = self.calculate_config_map()
        fac.set_config_map_size(cfg_map.get_total_size())
        for io_name, cfg_map_entry in cfg_map.entries.items():
            cfg_signal_expr = f"{fac.get_config_signal_name()}[{cfg_map_entry.offset} +: {cfg_map_entry.type.size}]"
            fac.add_ipcore_io(io_name, cfg_signal_expr)

        fac.set_ipcore_module_name(self.ip_name.lower())
        fac.set_ipcore_type_name(self.ipcore_type_name)

    def calculate_config_map(self) -> IPConfigMap:
        # Construct configuration map from the inputs/outputs.
        cfg_map = IPConfigMap()

        for io_name, io in self.inputs.items():
            if not isinstance(io.signal_route, IPIOConfigMapping):
                continue

            # If the signal is a SSR type signal, we need to consider all elements
            # as separate entries into the configuration map.
            if io.ssr == 1:
                # Normal (scalar) data signal.
                cfg_map.add_entry(io_name, IPConfigMapEntry(io.signal_route.offset, io.datatype))
            else:
                # Loop through signals.
                for i_ssr in range(io.ssr):
                    offset = io.signal_route.offset + i_ssr * io.signal_route.stride
                    signal_name = f"{io_name}_{i_ssr}" # Default signal naming convention for SSR signals from VMC
                    cfg_map.add_entry(signal_name, IPConfigMapEntry(offset, io.datatype))

        return cfg_map
    
    def __repr__(self):
        return f"IPCore[ip_name='{self.ip_name}', " \
               f"inputs={self.inputs}, outputs={self.outputs}, " \
               f"passthrough_axi={self.passthrough_axi}, " \
               f"axi_interfaces={self.axi_interfaces}, " \
               f"memory_map={self.memory_map}]"
    
def load_ipcores_from_file(file_path: str) -> List[IPCore]:
    import yaml

    with open(file_path, "r") as file:
        config = yaml.safe_load(file)
    
    ip_type_registry = IPTypeRegistry()
    ip_cores = []

    # Register datatypes defined in config file.
    if "datatypes" in config:
        for k, v in config["datatypes"].items():
            ip_type_registry.register_from_config(k, v)

    # Load IP core configurations
    if "ipcores" in config:
        for k, v in config["ipcores"].items():
            ipc = IPCore(k)
            ipc.from_config(v, ip_type_registry)
            ip_cores.append(ipc)

    return ip_cores