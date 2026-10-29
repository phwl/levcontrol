#!/bin/bash

set -e

FPGA_VERSION="1.4_r7"

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
OUTPUT_DIR="$SCRIPT_DIR/package"

mkdir -p "$OUTPUT_DIR"

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

cat > "$tmpdir/start.sh" <<EOF
#!/bin/sh

set -e

SCRIPT_DIR=\$(CDPATH= cd -- "\$(dirname -- "\${0}")" && pwd)

CONF_SERVER_DIR="\$SCRIPT_DIR/conf_server"
MONITOR="/opt/redpitaya/bin/monitor"
FPGAUTIL="/opt/redpitaya/bin/fpgautil"

if [ ! -x "\${MONITOR}" ]; then
    echo "Error: \${MONITOR} not found or not executable" >&2
    exit 1
fi

if [ ! -x "\${FPGAUTIL}" ]; then
    echo "Error: \${FPGAUTIL} not found or not executable" >&2
    exit 1
fi

MODEL=\$("\${MONITOR}" -f)
if [ -z "\${MODEL}" ]; then
    echo "Error: Unable to determine Red Pitaya model" >&2
    exit 1
fi

case "\${MODEL}" in
    z20_125)
        FPGA_BITSTREAM="\${SCRIPT_DIR}/hilsim_ipcore_v${FPGA_VERSION}.bin"
        ;;
    z20_125_v2)
        FPGA_BITSTREAM="\${SCRIPT_DIR}/hilsim_ipcore_rpgen2_v${FPGA_VERSION}.bin"
        ;;
    *)
        echo "Error: Unsupported Red Pitaya model: \${MODEL}" >&2
        exit 1
        ;;
esac

echo "Loading FPGA bitstream for model \${MODEL}..."
"\${FPGAUTIL}" -b "\${FPGA_BITSTREAM}"

echo "Compiling configuration server..."
cd "\${CONF_SERVER_DIR}" && make

echo "Starting configuration server..."
cd "\${CONF_SERVER_DIR}/build/hilsim_server" && ./hilsim_server

EOF

chmod +x "$tmpdir/start.sh"

tar -czf "$OUTPUT_DIR/redpitaya_hil_sim_package.tar.gz" \
    --exclude="*.pyc" \
    --exclude="__pycache__" \
    --exclude=".venv" \
    --exclude=".vscode" \
    --exclude=".Xil" \
    -C "$SCRIPT_DIR" "conf_server" \
    -C "$SCRIPT_DIR/ipcore/golden_images" "hilsim_ipcore_v${FPGA_VERSION}.bin" \
    -C "$SCRIPT_DIR/ipcore/golden_images" "hilsim_ipcore_rpgen2_v${FPGA_VERSION}.bin" \
    -C "$tmpdir" "start.sh"