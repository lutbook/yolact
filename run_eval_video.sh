#!/bin/bash
cd /yolact
python3 eval.py --config=yolact_r50_config \
--trained_model=/kw_resources/yolact_data/weights/yolact_r50_3799_285000.pth \
--score_threshold=0.5 \
--top_k=15 \
--video_multiframe=4 \
--video=/kw_resources/yolact_data/test_videos/P8220358.mp4:/kw_resources/yolact_data/P8220358.mp4