#!/bin/bash

pip install -U pip wheel
pip install torch torchvision --index-url https://download.pytorch.org/whl/cu118
pip install open3d
pip install PyMCubes pytorch-lamb sentencepiece sacremoses plyfile pynrrd
