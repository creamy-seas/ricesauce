#!/bin/sh

#Connect to lukes channel and steam the shitpost
cd /home/antonov/creamy_seas/video_tutorials/linux;


youtube-dl -f 135+140 -i --playlist-end 10  https://www.youtube.com/channel/UC2eYFnH61tmytImy1mTYvhA;

echo "====> videos synced";
yandex-disk sync
echo "====> yandex synced"
