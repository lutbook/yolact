#!/bin/bash
cd external/DCNv2
python3 setup.py build develop
cd /yolact
python3 eval.py --config=yolact_resnet50_custom_config \
--trained_model=/kw_resources/yolact_data/weights/yolact_resnet50_line_tree_2346_176000.pth \
--score_threshold=0.0 \
--top_k=2 \
--video_multiframe=4 \
--display_fps \
--video=/kw_resources/yolact_data/test_videos/P8220345.mp4:/kw_resources/yolact_data/output_videos/P8220345.mp4