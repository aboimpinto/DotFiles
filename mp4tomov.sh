#!/bin/bash

# Shell command
# ffmpeg -i '[INPUT_FILE]'-c:v prores_ks -profile:v 3 -qscale:v 9 -vendor ap10 -pix_fmt yuv422p10le -acodec pcm_s16le [OUTPUT_FILE]

# Example
# ffmpeg -i 'video.mp4' -c:v prores_ks -profile:v 3 -qscale:v 9 -vendor ap10 -pix_fmt yuv422p10le -acodec pcm_s16le test.mov

filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"

ffmpeg -i "$1" -c:v prores_ks -profile:v 3 -qscale:v 9 -vendor ap10 -pix_fmt yuv422p10le -acodec pcm_s16le "$filename.mov"

echo "work is finished..."