#!/bin/bash
python3 train.py \
--config=yolact_r50_rle_config \
--resume=/kw_resources/yolact_data/weights/resnet50-19c8e357.pth \
--start_iter=0