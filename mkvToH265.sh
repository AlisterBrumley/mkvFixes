#! /bin/bash
for file in *.mkv
do 
    # TODO make a python that does~ x265 or x264 and other features
    ffmpeg -i "${file}" -map 0:0 -c:v libx265 -tag:v hvc1 -preset slow -crf 25 -map 0:2 -c:a mp3 -c:s copy "fixedH265-${file}"
done