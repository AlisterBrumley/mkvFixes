#! /bin/bash
for file in *.mkv
do 
    # TODO make a python that does~ x265 or x264 and other features
    ffmpeg -i "${file}" -map 0 -vcodec copy -c:a aac -ac 2 "fixedStereo-allTracks-${file}"
done