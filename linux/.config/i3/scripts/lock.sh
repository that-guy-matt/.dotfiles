img=/tmp/i3lock.png

scrot -o $img
convert $img -scale 10% -scale 100% $img

i3lock -u -i $img
