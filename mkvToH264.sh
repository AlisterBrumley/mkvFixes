#! /bin/bash
for file in *.mkv
do 
    # TODO make a python that does~ x265 or x264 and other features
    ffmpeg -i "${file}" -map 0:0 -c:v libx264 -preset slow -crf 22 -map 0:2 -c:a mp3 -map 0:4 -c:s copy "fixedH264-${file}"
done