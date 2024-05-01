#! /bin/bash
for file in *.mkv
do 
    # TODO make a python that does~ x265 or x264 and other features
    ffmpeg -i "${file}" -map 0 -c:v copy -c:s copy -c:a aac -channel_layout:a 5.1 "fixedAudio-${file}"
done
