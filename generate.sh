#!/bin/bash


exit 0


###

cd generation/checkpoint/color_all_ae_64
gdown -c 1sc7HRpL3e8oYJXlN3CjLioTRln2GkXai
unzip -jn code-zz.zip -d ./
unzip -jn checkpoint.zip
unzip -n hdf5_test_new.zip -d ../../../
cd ../../../


###


cd generation/
CUDA_VISIBLE_DEVICES=2 python main.py \
  --res64 \
  --sample_dir \
  samples/im_ae_out \
  --start 0 \
  --end 7454
cd ..