#!/usr/bin/env python3

import argparse

from cclib import load_ipcores_from_file, IPCore

from commands import genwrapper, WrapperType
from commands import genconfig, ConfigEncoding, ConfigInputType

def main():
    parser = argparse.ArgumentParser(
        description="Collection of tools for configuring IP cores created with Vitis Model Composer / MATLAB/Simulink."
    )

    parser.add_argument("ip_description_file", type=str, help="Path to the IP description file (YAML format).")
    parser.add_argument("--core", dest="core", type=str, help="Name of the IP core to operate on if multiple are contained within the IP description file.")

    subparsers = parser.add_subparsers(dest="command", required=True)

    # Subcommand "genwrapper"
    genwrapper_parser = subparsers.add_parser("genwrapper", help="Generate a wrapper for an IP core.")
    genwrapper_parser.add_argument("output_file", type=str, help="Path to the output file for the generated Verilog wrapper.")
    genwrapper_parser.add_argument("--template", type=WrapperType, choices=list(WrapperType), default=WrapperType.VMC_WRAPPER, help="Template type for the wrapper generation.")

    # Subcommand "genconfig"
    genconfig_parser = subparsers.add_parser("genconfig", help="Generate configuration for an IP core.")
    genconfig_parser.add_argument("input_file", type=str, help="Path to the input file containing configuration data (e.g., MATLAB data). Pass '-' to read from stdin.")
    genconfig_parser.add_argument("output_file", type=str, help="Path to the output file for the generated configuration. Pass '-' to print to stdout.")
    genconfig_parser.add_argument("--type", type=ConfigInputType, choices=list(ConfigInputType), default=ConfigInputType.MATLAB_JSON, help="Type of the input configuration data.")
    genconfig_parser.add_argument("--encoding", type=ConfigEncoding, choices=list(ConfigEncoding), default=ConfigEncoding.BIN, help="Encoding format for the configuration output.")
    genconfig_parser.add_argument("--osize", type=int, default=0, help="Override the output size in bits. If set to 0, the size is determined by the IP core's configuration map by rounding to the next byte. Unused bits are set to 0.")

    # Subcommand "print"
    print_parser = subparsers.add_parser("print", help="Print the IP core description.")

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

    if args.command == "genwrapper":
        genwrapper(args, ip_core)
    elif args.command == "genconfig":
        genconfig(args, ip_core)
    elif args.command == "print":
        print(ip_core)
    else:
        parser.print_help()
        exit(1)

if __name__ == "__main__":
    main()