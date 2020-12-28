#!/bin/bash
while read LINE
  do youtube-dl -x --audio-format mp3 --prefer-ffmpeg $LINE
  echo "$LINE is Downloaded"
  echo "Moving $LINE" && mv *.mp3 music/
done < links.txt
