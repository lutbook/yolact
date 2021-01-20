#!/bin/bash
python3 train.py \
--config=yolact_r50_config \
--resume=/kw_resources/yolact_data/weights/yolact_r50_3799_285000.pth \
--start_iter=-1