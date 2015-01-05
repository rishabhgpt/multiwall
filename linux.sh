sh n.sh
PIC=$(pwd)
PIC=$PIC'/image.jpg'
echo $PIC
gsettings set org.gnome.desktop.background picture-uri 'file://$PIC'
