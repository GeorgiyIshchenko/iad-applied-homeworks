#!/usr/bin/env bash
set -euo pipefail

sudo pacman -Syu --needed clang llvm lld gcc cmake make git python python-pip python-virtualenv jupyterlab python-ipykernel cppcheck bear ripgrep ollama-cuda

sudo systemctl enable --now ollama
ollama pull gpt-oss:20b

python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

echo "Installation done!"
