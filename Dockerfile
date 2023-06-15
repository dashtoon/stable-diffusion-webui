FROM nvcr.io/nvidia/pytorch:23.05-py3


SHELL ["/bin/bash", "-ceuxo", "pipefail"]

ENV DEBIAN_FRONTEND=noninteractive PIP_EXISTS_ACTION=w  PIP_PREFER_BINARY=1

RUN apt-get update && apt install -y software-properties-common && apt-get update && apt-get install -y python3.10-venv libxext6 libsm6 libgl1 libgoogle-perftools-dev

ENV LD_PRELOAD=libtcmalloc.so 

WORKDIR stable-diffusion


COPY . .

RUN python -m venv venv --system-site-packages
