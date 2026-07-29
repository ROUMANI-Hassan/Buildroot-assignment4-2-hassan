#!/bin/sh
set -e

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
make -C "${SCRIPT_DIR}/buildroot" distclean
