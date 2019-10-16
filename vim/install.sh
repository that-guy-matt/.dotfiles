if [ $(dpkg-query -W -f='${Status}' vim 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    sudo apt install vim -y;
else
    echo "vim is already installed... moving on"
fi
