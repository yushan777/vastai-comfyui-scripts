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


cd "/workspace/ComfyUI/models/checkpoints"
# get JuggernautXL V9 Model
https://civitai.com/api/download/models/348913

# get SUPIR Models
wget https://huggingface.co/Kijai/SUPIR_pruned/resolve/main/SUPIR-v0F_fp16.safetensors
wget https://huggingface.co/Kijai/SUPIR_pruned/resolve/main/SUPIR-v0Q_fp16.safetensors

# get clip vision models
cd "/workspace/ComfyUI/models/clip-vision"
.....
