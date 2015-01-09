#!/bin/bash
export http_proxy=""
export https_proxy=""
wget -q imgur.com/r/wallpapers
grep -oE id=[^\\]{10}class=\"post\"\> wallpapers>walls
IFS=$'\n'      
for j in `cat ./walls`
do
j=$(echo $j|cut -c5-|rev|cut -c16-|rev)
wget -nc http://imgur.com/$j.jpg -P /tmp
gsettings set org.gnome.desktop.background picture-uri "file:///tmp/$j.jpg"
sleep 1800
done
