#!/bin/bash
cd external/DCNv2
python3 setup.py build develop
cd /yolact
python3 eval.py --config=yolact_r50_config \
--trained_model=/kw_resources/yolact_data/weights/yolact_r50_3799_285000.pth \
--score_threshold=0.0 \
--top_k=14 \
--images=/kw_resources/yolact_data/test_images/:/kw_resources/yolact_data/output_images/ \
--benchmark \
--cross_class_nms=True