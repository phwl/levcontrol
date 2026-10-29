
import argparse
import os
from enum import Enum

from cclib import IPCore, WrapperFactory

class WrapperType(Enum):
    VMC_WRAPPER = "vmc_wrapper"

    def __str__(self):
        return self.value

TEMPLATE_FILES = {
    "vmc_wrapper": "templates/vmc_wrapper.v",
}

def genwrapper(args: argparse.Namespace, ip_core: IPCore) -> None:
    base_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..")
    template_file = os.path.join(base_dir, TEMPLATE_FILES[args.template.value])

    with open(template_file, "r") as file:
        template_content = file.read()

    template_factory = WrapperFactory(template_content, [
        "clk", "rst",
        "cfg_ram_en", "cfg_ram_clk", "cfg_ram_rst", "cfg_ram_addr", "cfg_ram_dout",
        "cfg_load", "cfg_load_done", "cfg_apply",
        "state", "next_state", "read_ctr", "latency_ctr", "word_valid", "loaded_config", "applied_config"
    ])

    ip_core.emit_verilog(template_factory)
    wrapper_code = template_factory.generate()

    with open(args.output_file, "w") as output_file:
        output_file.write(wrapper_code)