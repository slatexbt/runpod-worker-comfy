#!/usr/bin/env bash

set -e

SNAPSHOT_FILE=$(ls /*snapshot*.json 2>/dev/null | head -n 1)

if [ -z "$SNAPSHOT_FILE" ]; then
    echo "runpod-worker-comfy: No snapshot file found. Exiting..."
    exit 0
fi

echo "runpod-worker-comfy: restoring snapshot: $SNAPSHOT_FILE"

comfy --workspace /comfyui node restore-snapshot "$SNAPSHOT_FILE" --pip-non-url

echo "runpod-worker-comfy: restored snapshot file: $SNAPSHOT_FILE"# Modified 2024-06-18
# Modified 2024-07-28
# Modified 2024-08-28
# Modified 2024-09-20
# Modified 2025-01-06
# Modified 2025-02-21
# Modified 2025-03-25
# Modified 2025-07-21
# Modified 2025-09-16
# Modified 2024-09-17
# Modified 2024-09-23
# Modified 2025-01-17
# Modified 2025-02-12
# Modified 2025-03-19
# Modified 2025-05-13
# Modified 2024-03-13
# Modified 2024-03-31
# Modified 2024-06-18
# Modified 2024-08-07
# Modified 2024-11-27
# Modified 2024-12-07
# Modified 2024-12-21
# Modified 2025-02-22
# Modified 2025-03-07
# Modified 2025-08-11
# Modified 2025-09-01
# Modified 2025-09-17
# Modified 2024-01-28
# Modified 2024-02-26
# Modified 2024-03-21
# Modified 2024-04-17
# Modified 2024-06-14
# Modified 2024-06-29
# Modified 2024-07-11
# Modified 2024-07-12
# Modified 2024-08-05
# Modified 2024-08-21
# Modified 2024-09-25
# Modified 2024-10-01
# Modified 2024-11-14
# Modified 2024-11-18
# Modified 2024-11-19
