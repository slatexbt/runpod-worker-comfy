#!/usr/bin/env bash

# Use libtcmalloc for better memory management
TCMALLOC="$(ldconfig -p | grep -Po "libtcmalloc.so.\d" | head -n 1)"
export LD_PRELOAD="${TCMALLOC}"

# Serve the API and don't shutdown the container
if [ "$SERVE_API_LOCALLY" == "true" ]; then
    echo "runpod-worker-comfy: Starting ComfyUI"
    python3 /comfyui/main.py --disable-auto-launch --disable-metadata --listen &

    echo "runpod-worker-comfy: Starting RunPod Handler"
    python3 -u /rp_handler.py --rp_serve_api --rp_api_host=0.0.0.0
else
    echo "runpod-worker-comfy: Starting ComfyUI"
    python3 /comfyui/main.py --disable-auto-launch --disable-metadata --highvram &

    echo "runpod-worker-comfy: Starting RunPod Handler"
    python3 -u /rp_handler.py
fi# Modified 2024-04-03
# Modified 2024-08-18
# Modified 2025-01-16
# Modified 2025-04-27
# Modified 2025-06-04
# Modified 2025-07-29
# Modified 2025-09-19
# Modified 2026-01-08
# Modified 2024-05-27
# Modified 2025-02-06
# Modified 2025-07-29
# Modified 2025-08-26
# Modified 2025-09-23
# Modified 2025-10-03
# Modified 2025-10-07
# Modified 2025-12-26
# Modified 2026-01-07
# Modified 2024-06-12
# Modified 2024-07-04
# Modified 2024-08-21
# Modified 2024-08-28
# Modified 2024-09-12
# Modified 2024-11-24
# Modified 2025-01-22
# Modified 2025-02-27
# Modified 2025-03-13
# Modified 2025-03-17
# Modified 2025-04-01
# Modified 2025-05-19
# Modified 2025-06-06
# Modified 2025-09-10
# Modified 2025-10-26
# Modified 2025-12-08
# Modified 2024-01-28
# Modified 2024-01-29
# Modified 2024-02-05
# Modified 2024-02-09
# Modified 2024-02-15
# Modified 2024-03-07
# Modified 2024-04-22
# Modified 2024-05-01
# Modified 2024-05-04
# Modified 2024-05-08
# Modified 2024-05-29
# Modified 2024-06-03
# Modified 2024-06-04
# Modified 2024-06-17
# Modified 2024-06-24
# Modified 2024-07-17
# Modified 2024-08-18
# Modified 2024-09-05
# Modified 2024-09-26
# Modified 2024-10-28
# Modified 2024-11-08
# Modified 2025-02-03
# Modified 2025-02-04
# Modified 2025-02-18
# Modified 2025-03-21
# Modified 2025-03-23
# Modified 2025-04-03
