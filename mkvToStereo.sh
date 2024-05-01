#! /bin/bash
for file in *.mkv
do 
    # TODO make a python that does~ x265 or x264 and other features
    ffmpeg -i "${file}" -vcodec copy -c:a aac -ac 2 "fixedStereo-${file}"
done