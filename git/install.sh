if [ $(dpkg-query -W -f='${Status}' git 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    sudo apt install git -y;
else
    echo "git is already installed... moving on"
fi

