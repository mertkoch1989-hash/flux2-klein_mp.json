# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# NOTE: The workflow included custom nodes in unknown_registry that could not be resolved because no aux_id (GitHub repo) was provided.
# Skipping installation for the following unknown_registry nodes:
# - MarkdownNote (no aux_id provided)
# - MarkdownNote (no aux_id provided)

# download models into comfyui
# (no models specified in the workflow)

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
