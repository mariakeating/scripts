#!/bin/sh
LOG=archived.txt
while read p; do
youtube-dl --add-metadata --write-description --write-info-json \
    --write-thumbnail --download-archive $LOG --all-subs -ciw \
    -o "channels/%(uploader)s/%(upload_date)s - %(title)s.%(ext)s" "$p"
done <channels.txt
