#!/bin/bash
cd external/DCNv2
python3 setup.py build develop
cd /yolact
python3 train.py \
--config=yolact_r50_config \
--resume=/kw_resources/yolact_data/weights/resnet50-19c8e357.pth \
--start_iter=0