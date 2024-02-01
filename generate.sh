#!/bin/bash
exit 0

CUDA_VISIBLE_DEVICES=2 python main.py \
  --res64 \
  --sample_dir \
  samples/im_ae_out \
  --start 0 \
  --end 7454
