#! /bin/bash
set -eu

ARCH="${1:-arm}"

source build-universe/activate.sh "${ARCH}"
./scripts/clear.sh
./scripts/get.sh
./scripts/versions.sh
run ./scripts/build.sh
