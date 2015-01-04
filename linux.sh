sh n.sh
PIC= $(echo pwd)
echo $PIC
gsettings set org.gnome.desktop.background picture-uri "file://$PIC/image.jpg"