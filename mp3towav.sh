#!/bin/bash

# Shell command
# ffmpeg -i [INPUT_FILE] -c:a pcm_s16le [OUTPUT_FILE]

# Example
# ffmpeg -i music.mp3 -c:a pcm_s16le output.wav

filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"

ffmpeg -i "$1" -c:a pcm_s16le "$filename.wav"

echo "work is finished..."