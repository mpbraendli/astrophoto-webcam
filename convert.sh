#!/bin/bash

if [ "$1" == "" ] || [ "$2" == "" ]
then
    echo "$0 source dest"
    exit 1
fi

ffmpeg -i $1 -pix_fmt rgb24 -vcodec rawvideo $2
