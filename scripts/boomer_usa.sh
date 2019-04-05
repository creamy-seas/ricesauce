#!/bin/sh
echo "==> Connect to Lukes channel and stream the shitpost"
#Connect to lukes channel and steam the shitpost
cd /home/antonov/creamy_seas/boomer/linux;
youtube-dl -f 135+140 -i --playlist-end 10 -o "%(title)s.%(ext)s"  https://www.youtube.com/channel/UC2eYFnH61tmytImy1mTYvhA;

# download from my file
videoFileLocation="/home/antonov/creamy_seas/syncFiles/downloader.txt"
cd /home/antonov/creamy_seas/boomer
while read line; do
	youtube-dl -o "%(title)s.%(ext)s" -i -f "best[ext=mp4]/best[filesize<200M]" "$line"
done < "$videoFileLocation"

echo "====> videos synced";
yandex-disk sync
yandex-disk start
echo "====> yandex synced"
