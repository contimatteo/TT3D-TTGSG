#!/bin/bash


exit 0


###

# rm -rf generation/checkpoint/color_all_ae_64/
# mkdir -p generation/checkpoint/color_all_ae_64/
rm -rf hdf5_test_new
# mkdir hdf5_test_new

# rm -rf /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/
mkdir -p /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/

gdown -c 1sc7HRpL3e8oYJXlN3CjLioTRln2GkXai -O /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/
unzip -jn /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/code-zz.zip -d /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/

unzip -n /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/hdf5_test_new.zip -d /media/data2/mconti/TT3D/checkpoints/TTGSG/generation
ln -s /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/hdf5_test_new ./

unzip -jn /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/checkpoint.zip -d /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/checkpoints/
# mv /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/checkpoints/ /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/color_all_ae_64/
# mkdir -p /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/checkpoint/color_all_ae_64/
# mv /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/color_all_ae_64/ /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/checkpoint/
# ln -s /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/checkpoint/color_all_ae_64/ generation/checkpoint/
ln -s /media/data2/mconti/TT3D/checkpoints/TTGSG/generation/checkpoints/res64.model64-199.pth generation/checkpoint/color_all_ae_64/res64.model64-199.pth




###


cd generation/
CUDA_VISIBLE_DEVICES=2 python main.py \
  --res64 \
  --sample_dir \
  samples/im_ae_out \
  --start 0 \
  --end 7454
cd ..