#!/bin/sh

ASSET_PATH="/d/data-ev-live"
PROJECT_PATH="/d/code-store/maxscript/3d-model-floor"
SCREENSHOT_PATH="${PROJECT_PATH}/screenshot"

: <<NOTE
# genarete demo.gif
src="${ASSET_PATH}/20200211_064056.mp4"
des="${SCREENSHOT_PATH}/demo.gif"
ffmpeg -i "$src" "$des"
NOTE

# genarete how-to-build.gif
src="${ASSET_PATH}/20200221_074200.mp4"
des="${SCREENSHOT_PATH}/how-to-build.gif"
#帧率大小
RATE_SIZE=1 #-r 1
#屏幕大小
SCREEN_SIZE="320x240" #-s 320x240
#开始时间
START_TIME=0 #-ss 0
#结束时间
#-t 10
#文件类型
#-f gif
ffmpeg -i "$src" -f gif "$des"

## file-usage
# ./scripts/make-sreenshot.sh
