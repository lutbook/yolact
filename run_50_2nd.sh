#!/bin/bash
cd external/DCNv2
python3 setup.py build develop
cd /yolact
python3 train.py --config=yolact_resnet50_custom_config --resume=/kw_resources/yolact_data/weights/yolact_resnet50_line_tree_2119_159000.pth --start_iter=159000