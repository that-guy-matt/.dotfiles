if [ $(dpkg-query -W -f='${Status}' tmux 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    sudo apt install tmux;
else
    echo "tmux is already installed... moving on"
fi
