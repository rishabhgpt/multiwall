id=$(wget -q http://bing.com -O -| grep -o url:[^' '\\]*jpg|cut -c6-)
wget http://bing.com"$id"
mv *.jpg image.jpg
