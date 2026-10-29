#!/bin/bash

set -e

FPGA_VERSION="1.2.2"

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
PKG_DIR="$SCRIPT_DIR/pkg"
OUTPUT_DIR="$SCRIPT_DIR/package"

mkdir -p $OUTPUT_DIR

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

cat > "$tmpdir/start.sh" <<EOF
#!/bin/sh

set -e

SCRIPT_DIR=\$(CDPATH= cd -- "\$(dirname -- "\${0}")" && pwd)

CORECONFIG_DIR="\${SCRIPT_DIR}/coreconfig"
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
        IP_DESCRIPTION_FILE="\${SCRIPT_DIR}/ip_description.yaml"
        FPGA_BITSTREAM="\${SCRIPT_DIR}/lqg_fp7_v${FPGA_VERSION}.bin"
        ;;
    z20_125_v2)
        IP_DESCRIPTION_FILE="\${SCRIPT_DIR}/ip_description_rpgen2.yaml"
        FPGA_BITSTREAM="\${SCRIPT_DIR}/lqg_fp7_rpgen2_v${FPGA_VERSION}.bin"
        ;;
    *)
        echo "Error: Unsupported Red Pitaya model: \${MODEL}" >&2
        exit 1
        ;;
esac

echo "Loading FPGA bitstream for model \${MODEL}..."
"\${FPGAUTIL}" -b "\${FPGA_BITSTREAM}"

echo "Starting configuration server..."
"\${CORECONFIG_DIR}/server.py" "\${IP_DESCRIPTION_FILE}"
EOF

chmod +x "$tmpdir/start.sh"

tar -czf "$OUTPUT_DIR/lqg_fp7_package.tar.gz" \
    --exclude="*.pyc" \
    --exclude="__pycache__" \
    --exclude=".venv" \
    -C "$SCRIPT_DIR" "ip_description.yaml" \
    -C "$SCRIPT_DIR" "ip_description_rpgen2.yaml" \
    -C "$SCRIPT_DIR/ipcoreconfig" "coreconfig" \
    -C "$SCRIPT_DIR/vivado/bitstreams" "lqg_fp7_v${FPGA_VERSION}.bin" \
    -C "$SCRIPT_DIR/vivado/bitstreams" "lqg_fp7_rpgen2_v${FPGA_VERSION}.bin" \
    -C "$tmpdir" "start.sh"