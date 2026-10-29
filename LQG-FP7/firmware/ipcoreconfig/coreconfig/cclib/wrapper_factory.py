from typing import List

from .ip_verilog_factory import IPCoreVerilogFactory

class WrapperFactory(IPCoreVerilogFactory):
    def __init__(self, template: str, reserved_wire_names: List[str], indent: int = 4):
        super().__init__()
        self.template = template
        self.reserved_wire_names = reserved_wire_names
        self.indent = indent
        self.module_ios = {}
        self.ipcore_ios = {}
        self.config_map_size = 0
        self.ipcore_module_name = "<undefined>"
        self.ipcore_type_name = "<undefined>"

    def add_module_io(self, type: str, signed: bool, name: str, bitsize: int = 1, attributes: dict = {}) -> None:
        if name in self.module_ios:
            raise ValueError(f"Module IO with name '{name}' already exists.")
        if name in self.reserved_wire_names:
            raise ValueError(f"Cannot create IO wire with name '{name}' since it is used in the template.")
        self.module_ios[name] = {
            "type": type, "signed": signed, "bitsize": bitsize, "attributes": attributes
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
        for i, (k, v) in enumerate(self.module_ios.items()):
            _comma = "," if i < len(self.module_ios) - 1 else ""
            _type = v["type"]
            _signed = "signed " if v["signed"] else ""
            _size = f"[{v['bitsize']-1}:{0}] " if v["bitsize"] > 1 else ""

            # If there are any attributes set, we need to add them before the defintion of the I/O.
            for k_attr, v_attr in v["attributes"].items():
                _attr_value = str(v_attr)
                lns.append(f"{_indent*2}(* {k_attr} = \"{_attr_value}\" *)")

            lns.append(f"{_indent*2}{_type} {_signed}{_size}{k}{_comma}")

        if len(lns) == 0:
            return o_str
        
        # Make space between template and generated ios.
        o_str += ",\n\n"
        o_str += _indent*2 + "// Generated module I/Os\n"
        o_str += "\n".join(lns)

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
        gen_code = str(self.template)

        for k, v in template_vars.items():
            assert isinstance(v, str) and isinstance(k, str)
            gen_code = gen_code.replace("{{" + k + "}}", v)

        return gen_code