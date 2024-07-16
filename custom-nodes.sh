#!/bin/bash

cd "/workspace/ComfyUI/custom_nodes"

repos=(
    "https://github.com/rgthree/rgthree-comfy"
    "https://github.com/cubiq/ComfyUI_essentials"
    "https://github.com/kijai/ComfyUI-KJNodes"
    "https://github.com/kijai/ComfyUI-SUPIR"
    "https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
    "https://github.com/WASasquatch/was-node-suite-comfyui"
    "https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
    "https://github.com/Extraltodeus/ComfyUI-AutomaticCFG"
    "https://github.com/audioscavenger/save-image-extended-comfyui"
    "https://github.com/crystian/ComfyUI-Crystools"
)

for repo in "${repos[@]}"
do
    git clone "$repo"
done

echo "All custom nodes have been cloned."
