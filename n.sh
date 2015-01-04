id=$(wget -q http://bing.com -O - | grep -oE "url:'[^\n]*id:'bgDiv'"|cut -c6-|rev|cut -c13-|rev)
wget http://bing.com"$id"
mv *.jpg image.jpg