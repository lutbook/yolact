#!/bin/bash

cd external/DCNv2
python setup.py build develop
cd
cd
run python3 train.py --config=yolact_plus_custom_config --resume=/kw_resources/yolact_data/weights/yolact_resnet101_line_tree_266_20000.pth --start_iter=20001 
