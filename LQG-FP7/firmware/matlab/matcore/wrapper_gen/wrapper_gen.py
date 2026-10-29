#!/usr/bin/env python3

import yaml
import sys
import io
from typing import Union, List

class IPType:
    def __init__(self, size: int, signed: bool, fixpt_bin: int = 0):
        self.size = size
        self.signed = signed
        self.fixpt_bin = fixpt_bin

    def __repr__(self):
        return f"IPType(size={self.size}, signed={self.signed}, fixpt_bin={self.fixpt_bin})"

class IPTypeRegistry:
    def __init__(self):
        self.type_dict = {}
    
    def register(self, name: str, type: IPType):
        if name in self.type_dict:
            raise KeyError(f"A type with name '{name}' already exists in the type registry.")
        self.type_dict[name] = type

    def register_from_config(self, name: str, config: dict):
        size = config["size"]
        signed = config["signed"] if "signed" in config else False
        fixpt_bin = config["fixpt_bin"] if "fixpt_bin" in config else 0
        self.register(name, IPType(size, signed, fixpt_bin))

    def get_type(self, name: str) -> IPType:
        if name not in self.type_dict:
            raise KeyError(f"No type with name '{name}' found in registry.")
        return self.type_dict[name]

    def __repr__(self):
        return f"IPTypeRegistry[{str(self.type_dict)}]"

class IPIOConfigMapping:
    def __init__(self, offset: int, stride: int = -1):
        self.offset = offset
        self.stride = stride

    def __repr__(self):
        return f"IPConfigMapping(offset={self.offset}, stride={self.stride})"

class IPIOSignalMapping:
    def __init__(self, ext_signal_name: str, ssr_pack: bool = False):
        self.ext_signal_name = ext_signal_name
        self.ssr_pack = ssr_pack

    def __repr__(self):
        return f"IPExtIOMapping(ext_signal_name={self.ext_signal_name}, ssr_pack={self.ssr_pack})"

class IPIO:
    def __init__(self, datatype: IPType, ssr: int = 1, signal_route: Union[IPIOConfigMapping, IPIOSignalMapping] = None):
        self.datatype = datatype
        self.ssr = ssr
        self.signal_route = signal_route

    def __repr__(self):
        return f"IPIO(datatype={self.datatype}, ssr={self.ssr})"

class IPConfigMapEntry:
    def __init__(self, offset: int, type: IPType):
        self.offset = offset
        self.type = type

    def __repr__(self):
        return f"IPConfigMapEntry(offset={self.offset}, type={str(self.type)})"

class IPConfigMap:
    def __init__(self):
        self.entries = {}
    
    def add_entry(self, map_destination: str, entry: IPConfigMapEntry) -> None:
        if map_destination in self.entries.keys():
            raise KeyError("An entry with the given map_destination already exists.")
        self.entries[map_destination] = entry
    
    def get_total_size(self) -> int:
        size = 0
        for entry in self.entries.values():
            size = max(size, entry.offset + entry.type.size)
        return size

    def __repr__(self):
        return f"IPConfigMap()"

class IPCoreVerilogFactory:
    def __init__(self):
        pass

    def add_module_io(self, type: str, signed: bool, name: str, bitsize: int = 1) -> None:
        raise NotImplementedError("Interface not callable.")

    def add_ipcore_io(self, ipcore_signal: str, signal: str) -> None:
        raise NotImplementedError("Interface not callable.")

    def get_config_signal_name(self) -> str:
        raise NotImplementedError("Interface not callable.")
    
    def set_config_map_size(self, config_map_size: int) -> None:
        raise NotImplementedError("Interface not callable.")
    
    def set_ipcore_module_name(self, ipcore_module_name: str) -> None:
        raise NotImplementedError("Interface not callable.")
    
    def set_ipcore_type_name(self, ipcore_type_name: str) -> None:
        raise NotImplementedError("Interface not callable.")

class IPCore:
    def __init__(self, ip_name: str):
        self.ip_name = ip_name
        self.ipcore_type_name = ip_name
        self.passthrough_axi = False
        self.inputs = {}
        self.outputs = {}

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

    def add_io_from_config(self, io_type: str, io_name: str, config: dict, type_registry: IPTypeRegistry):
        if io_name in self.inputs or io_name in self.outputs:
            raise KeyError(f"An I/O with name '{io_name}' already exists in this IP core.")
        
        datatype = type_registry.get_type(config["datatype"])
        ssr = config["ssr"] if "ssr" in config else 1

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
            signal_route = IPIOSignalMapping(sm_name, sm_ssr_pack)

        io = IPIO(datatype, ssr, signal_route)

        if io_type == "input":
            self.inputs[io_name] = io
        elif io_type == "output":
            self.outputs[io_name] = io
        else:
            raise ValueError("Invalid io_type specified.")
    
    def emit_verilog(self, fac: IPCoreVerilogFactory) -> None:
        # External signals
        merged_ios = []
        [merged_ios.append(("input", io_name, io)) for io_name, io in self.inputs.items()]
        [merged_ios.append(("output", io_name, io)) for io_name, io in self.outputs.items()]

        for io_type, io_name, io in merged_ios:
            if not isinstance(io.signal_route, IPIOSignalMapping):
                continue

            if io.ssr == 1:
                # Scalar signal, just direct mapping IPCore <-> Output.
                fac.add_module_io(io_type, io.datatype.signed, io.signal_route.ext_signal_name, io.datatype.size)
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
        return f"IPCore[ip_name='{self.ip_name}', inputs={self.inputs}, outputs={self.outputs}]"


class WrapperFactory(IPCoreVerilogFactory):
    def __init__(self, wrapper_template_file: str, reserved_wire_names: List[str], indent: int = 4):
        super().__init__()
        self.wrapper_template_file = wrapper_template_file
        self.reserved_wire_names = reserved_wire_names
        self.indent = indent
        self.module_ios = {}
        self.ipcore_ios = {}
        self.config_map_size = 0
        self.ipcore_module_name = "<undefined>"
        self.ipcore_type_name = "<undefined>"

    def add_module_io(self, type: str, signed: bool, name: str, bitsize: int = 1) -> None:
        if name in self.module_ios:
            raise ValueError(f"Module IO with name '{name}' already exists.")
        if name in self.reserved_wire_names:
            raise ValueError(f"Cannot create IO wire with name '{name}' since it is used in the template.")
        self.module_ios[name] = {
            "type": type, "signed": signed, "bitsize": bitsize
        }

    def add_ipcore_io(self, ipcore_signal: str, signal: str) -> None:
        if ipcore_signal in self.ipcore_ios:
            raise ValueError(f"IP core signal '{ipcore_signal}' was already set.")
        self.ipcore_ios[ipcore_signal] = signal

    def get_config_signal_name(self) -> str:
        return "applied_config"
    
    def set_config_map_size(self, config_map_size: int) -> None:
        self.config_map_size = config_map_size

    def set_ipcore_module_name(self, ipcore_module_name: str) -> None:
        self.ipcore_module_name = ipcore_module_name

    def set_ipcore_type_name(self, ipcore_type_name: str) -> None:
        self.ipcore_type_name = ipcore_type_name

    def _generate_module_ios(self):
        o_str = ""
        lns = []
        _indent = self.indent * " "
        for k, v in self.module_ios.items():
            _type = v["type"]
            _signed = "signed " if v["signed"] else ""
            _size = f"[{v['bitsize']-1}:{0}] " if v["bitsize"] > 1 else ""
            lns.append(f"{_indent*2}{_type} {_signed}{_size}{k}")

        if len(lns) == 0:
            return o_str
        
        # Make space between template and generated ios.
        o_str += ",\n\n"
        o_str += _indent*2 + "// Generated module I/Os\n"
        o_str += ",\n".join(lns)

        return o_str
    
    def _generate_ipcore_inst_code(self):
        o_str = ""
        lns = []
        _indent = self.indent * " "
        for k, v in self.ipcore_ios.items():
            lns.append(f"{_indent*2}.{k}({v})")

        o_str += f"{_indent}// IP-Core instance\n"
        o_str += f"{_indent}{self.ipcore_type_name} {self.ipcore_type_name}_inst (\n"
        o_str += ",\n".join(lns) + "\n"
        o_str += f"{_indent});\n"

        return o_str

    def generate(self) -> str:
        template_vars = {}

        template_vars["module_name"] = self.ipcore_module_name
        template_vars["ipcore_params"] = ""
        template_vars["ipcore_interface"] = self._generate_module_ios()
        template_vars["ipcore_inst_code"] = self._generate_ipcore_inst_code()
        template_vars["config_size"] = str(self.config_map_size)
        
        # Load template and populate variables.
        gen_code = ""
        with open(self.wrapper_template_file, "r") as tfile:
            gen_code = tfile.read()

        for k, v in template_vars.items():
            assert isinstance(v, str) and isinstance(k, str)
            gen_code = gen_code.replace("{{" + k + "}}", v)

        return gen_code

def print_usage():
    print(f"{sys.argv[0]} <description yaml>")

def main():
    if len(sys.argv) != 2:
        print_usage()
        exit(1)

    config_filename = sys.argv[1]
    with open(config_filename, "r") as file:
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

    template_factory = WrapperFactory("templates/wrapper.v", [
        "clk", "rst",
        "cfg_ram_en", "cfg_ram_clk", "cfg_ram_rst", "cfg_ram_addr", "cfg_ram_dout",
        "cfg_load", "cfg_load_done", "cfg_apply",
        "state", "next_state", "read_ctr", "latency_ctr", "word_valid", "loaded_config", "applied_config"
    ])

    ipc.emit_verilog(template_factory)
    gen_wrapper = template_factory.generate()

    with open("out.v", "w") as ofile:
        ofile.write(gen_wrapper)

if __name__ == "__main__":
    main()

"""
def generate_wrapper_for_ip_core(ipc: IPCore) -> str:
    sio = io.StringIO()

    INDENT = " "*4

    # Create and write Verilog module header.

    verl_ios = []

    for k, v in ipc.inputs.items():
        bit_size = v.ssr * v.datatype.size
        s_signed = "signed " if v.datatype.signed and v.ssr == 1 else ""
        s_vec = "" if bit_size == 1 else f"[{bit_size-1}:0] "
        s_name = k.lower() if v.ssr == 1 else k.lower() + "_vec"
        verl_ios.append(f"input {s_signed}{s_vec}{s_name}")
    
    for k, v in ipc.outputs.items():
        bit_size = v.ssr * v.datatype.size
        s_signed = "signed " if v.datatype.signed and v.ssr == 1 else ""
        s_vec = "" if bit_size == 1 else f"[{bit_size-1}:0] "
        s_name = k.lower() if v.ssr == 1 else k.lower() + "_vec"
        verl_ios.append(f"output {s_signed}{s_vec}{s_name}")

    s_verl_ios = f",\n{INDENT}".join(verl_ios)
    sio.write(f"module {ipc.ip_name.lower()}_wrapper (\n{INDENT}{s_verl_ios}\n);\n\n")

    # Create and write instanciation of the actual IP core.

    verl_instmaps = []
    for k, v in list(ipc.inputs.items()) + list(ipc.outputs.items()):
        # Check if normal (ssr=1)
        if v.ssr == 1:
            s_mapto = k.lower()
            s_mapfrom = k.lower()
            verl_instmaps.append(f".{s_mapto}({s_mapfrom})")

        # This is a SSR (vector) input, thus we need to split into separate inputs on actual instance.
        else:
            m = v.datatype.size
            for i in range(v.ssr):
                s_mapto = f"{k.lower()}_{i}"
                s_mapfrom = f"{k.lower()}_vec[{(i+1)*m - 1}:{i*m}]"
                verl_instmaps.append(f".{s_mapto}({s_mapfrom})")

    s_verl_instmaps = f",\n{INDENT}".join(verl_instmaps)
    sio.write(f"{ipc.ip_name.lower()} {ipc.ip_name.lower()}_inst (\n{INDENT}{s_verl_instmaps}\n);\n\n")

    sio.write(f"endmodule\n")

    sio.seek(0)
    return sio.read()
"""