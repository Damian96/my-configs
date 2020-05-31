#!/bin/bash

link="$(youtube-dl --get-url --format bestaudio/best $1)"

ffmpeg -i "$link" -c:a copy out.mkv

wait

unset link
exit 0
