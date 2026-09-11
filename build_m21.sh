#!/bin/bash
set -euo pipefail
export DEVICE=m21
export ROM=oneui
export KSU=1
export SELINUX=e
export CONFIG_EXTRA=vendor/m21_compat.config
exec bash build_kernel.sh
