#!/bin/bash

set -eo pipefail
conda init bash
conda init zsh
conda env create -f ./environment.yaml
mkdir weights
cd weights 
wget https://huggingface.co/stabilityai/stable-diffusion-2/resolve/main/768-v-ema.ckpt