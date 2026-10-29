#!/bin/bash

set -euo pipefail

python3 ipcoreconfig/coreconfig/coreconfig.py \
    --core lqg_axi_test_wrapper ip_description.yaml \
    genwrapper \
    src/rtl/generated/lqg_axi_test_wrapper.v