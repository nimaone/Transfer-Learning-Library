#!/usr/bin/env bash
# Market1501 -> Duke
CUDA_VISIBLE_DEVICES=0 python baseline.py data -s Market1501 -t DukeMTMC -a resnet50_ibn_a \
--iters-per-epoch 800 --print-freq 80 --finetune --seed 0 --log logs/baseline/Market2Duke
CUDA_VISIBLE_DEVICES=0 python baseline.py data -s Market1501 -t DukeMTMC -a resnet50_ibn_b \
--iters-per-epoch 800 --print-freq 80 --finetune --seed 0 --log logs/baseline/Market2Duke

# Duke -> Market1501
CUDA_VISIBLE_DEVICES=0 python baseline.py data -s DukeMTMC -t Market1501 -a resnet50_ibn_a \
--iters-per-epoch 800 --print-freq 80 --finetune --seed 0 --log logs/baseline/Duke2Market
CUDA_VISIBLE_DEVICES=0 python baseline.py data -s DukeMTMC -t Market1501 -a resnet50_ibn_b \
--iters-per-epoch 800 --print-freq 80 --finetune --seed 0 --log logs/baseline/Duke2Market

# Market1501 -> MSMT
CUDA_VISIBLE_DEVICES=0 python baseline.py data -s Market1501 -t MSMT17 -a resnet50_ibn_a \
--iters-per-epoch 800 --print-freq 80 --finetune --seed 0 --log logs/baseline/Market2MSMT
CUDA_VISIBLE_DEVICES=0 python baseline.py data -s Market1501 -t MSMT17 -a resnet50_ibn_b \
--iters-per-epoch 800 --print-freq 80 --finetune --seed 0 --log logs/baseline/Market2MSMT

# MSMT -> Market1501
CUDA_VISIBLE_DEVICES=0 python baseline.py data -s MSMT17 -t Market1501 -a resnet50_ibn_a \
--iters-per-epoch 800 --print-freq 80 --finetune --seed 0 --log logs/baseline/MSMT2Market
CUDA_VISIBLE_DEVICES=0 python baseline.py data -s MSMT17 -t Market1501 -a resnet50_ibn_b \
--iters-per-epoch 800 --print-freq 80 --finetune --seed 0 --log logs/baseline/MSMT2Market

# Duke -> MSMT
CUDA_VISIBLE_DEVICES=0 python baseline.py data -s DukeMTMC -t MSMT17 -a resnet50_ibn_a \
--iters-per-epoch 800 --print-freq 80 --finetune --seed 0 --log logs/baseline/Duke2MSMT
CUDA_VISIBLE_DEVICES=0 python baseline.py data -s DukeMTMC -t MSMT17 -a resnet50_ibn_b \
--iters-per-epoch 800 --print-freq 80 --finetune --seed 0 --log logs/baseline/Duke2MSMT

# MSMT -> Duke
CUDA_VISIBLE_DEVICES=0 python baseline.py data -s MSMT17 -t DukeMTMC -a resnet50_ibn_a \
--iters-per-epoch 800 --print-freq 80 --finetune --seed 0 --log logs/baseline/MSMT2Duke
CUDA_VISIBLE_DEVICES=0 python baseline.py data -s MSMT17 -t DukeMTMC -a resnet50_ibn_b \
--iters-per-epoch 800 --print-freq 80 --finetune --seed 0 --log logs/baseline/MSMT2Duke
