#!/bin/bash


cd external/DCNv2
python setup.py build develop
cd /
pwd
pip3 install cython 
pip3 install numpy>=1.19 scikit-image pillow pycocotools matplotlib opencv-contrib-python-headless torchvision==0.5.0 torch==1.4.0

cd yolact
pwd
python3 train.py --config=yolact_plus_custom_config --resume=/kw_resources/yolact_data/weights/yolact_resnet101_line_tree_266_20000.pth --start_iter=20001 