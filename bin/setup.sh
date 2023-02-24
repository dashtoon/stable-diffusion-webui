#!/bin/bash

mkdir -p "/opt/dashtoon/stable-diffusion-webui/models/Stable-diffusion"
mkdir -p "/opt/dashtoon/stable-diffusion-webui/extensions"
mkdir -p "/opt/dashtoon/stable-diffusion-webui/embeddings"
mkdir -p "/opt/dashtoon/stable-diffusion-webui/outputs"

cp ../docker-compose.yaml ../../docker-compose.yaml

cd /opt/dashtoon/stable-diffusion-webui/models/Stable-diffusion/
wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned.ckpt
cd ../../extensions

git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui-aesthetic-gradients.git
git clone https://github.com/deforum-art/deforum-for-automatic1111-webui.git
git clone https://github.com/adieyal/sd-dynamic-prompts.git
git clone https://github.com/fkunn1326/openpose-editor.git
git clone https://github.com/civitai/sd_civitai_extension.git
git clone https://github.com/Mikubill/sd-webui-controlnet.git
git clone https://github.com/Klace/stable-diffusion-webui-instruct-pix2pix.git
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui-tokenizer.git
git clone https://github.com/DominikDoom/a1111-sd-webui-tagcomplete.git

cd sd-webui-controlnet/models
wget https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_openpose.pth
wget https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_depth.pth
