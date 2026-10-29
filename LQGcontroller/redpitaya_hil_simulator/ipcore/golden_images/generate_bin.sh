#!/bin/bash

# A small utility to convert .bit bitstreams into .bin images for newer
# Xilinx FPGA drivers that require .bin files to be loaded.

set -euo pipefail

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input.bit> <output.bin>"
    exit 1
fi

input_bit="$1"
output_bin="$2"

# Temporary directory
temp_dir=$(mktemp -d)
trap 'rm -rf "$temp_dir"' EXIT

cat > "$temp_dir/fpga.bif" <<EOF
all:
{
    $(basename "$input_bit")
}
EOF

cp "$input_bit" "$temp_dir/"
pushd "$temp_dir"
bootgen -arch zynq -process_bitstream bin -image fpga.bif -o $(basename "$output_bin") -w
popd

find $temp_dir -type f -name "*.bin" -print | head -n 1 | xargs -I{} mv {} "$output_bin"