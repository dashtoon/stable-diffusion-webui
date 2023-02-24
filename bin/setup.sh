#!/bin/bash

mkdir -p "/opt/dashtoon/stable-diffusion-webui/models/Stable-diffusion"
mkdir -p "/opt/dashtoon/stable-diffusion-webui/extensions"
mkdir -p "/opt/dashtoon/stable-diffusion-webui/embeddings"
mkdir -p "/opt/dashtoon/stable-diffusion-webui/outputs"

cp ../docker-compose.yaml ../../docker-compose.yaml

cd /opt/dashtoon/stable-diffusion-webui/models/Stable-diffusion/
wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned.ckpt
