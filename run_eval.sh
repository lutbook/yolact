#!/bin/bash
cd external/DCNv2
python3 setup.py build develop
cd /yolact
python3 eval.py --config=yolact_plus_custom_config \
--trained_model=/kw_resources/yolact_data/weights/yolact_resnet101_line_tree_999_75000.pth \
--score_threshold=0.0 \
--top_k=14 \
--images=kw_resources/yolact_data/test_images/:kw_resources/yolact_data/output_images/ \
--benchmark