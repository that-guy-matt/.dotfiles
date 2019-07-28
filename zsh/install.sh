# if zsh is not installed, install it and set it to the default shell

if [ $(dpkg-query -W -f='${Status}' zsh 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
    echo "installing zsh..."
    sudo apt install zsh;
    sudo usermod -s $(which zsh) $USER;
else
    echo "zsh is already installed... moving on"
    echo "checking of zsh is your default shell..."
    if [ $SHELL != "/usr/bin/zsh" ] || [ $SHELL != "/bin/zsh" ]; then
        echo "zsh is not your default shell";
        echo "making zsh your default shell...";
        sudo usermod -s $(which zsh) $USER;
    else
        echo "zsh is already your default shell... moving on";
    fi
fi


