#!/bin/bash

if [ "$1" == "" ]
then
    echo "$0 dest"
    exit 1
fi

vlc v4l2:// ":sout=#transcode{acodec=none}:duplicate{dst=file{mux=avi,dst=$1},dst=display}" ":sout-keep"
