#!/bin/sh
gst-launch-1.0 rtspsrc latency=5 location="rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mp4" ! rtph264depay ! h264parse ! avdec_h264 ! videoscale method=0 ! video/x-raw,width=1920,height=1080 ! videoconvert ! cairooverlay ! videoconvert ! fpsdisplaysink video-sink=autovideosink sync=false
