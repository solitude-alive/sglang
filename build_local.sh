#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DATE_TAG=$(date +%Y%m%d)
IMAGE_NAME="sglang-local:${DATE_TAG}"

echo "=== Building ${IMAGE_NAME} ==="
sudo DOCKER_BUILDKIT=1 docker build \
  -f "${SCRIPT_DIR}/Dockerfile.local" \
  -t "${IMAGE_NAME}" \
  "${SCRIPT_DIR}"
