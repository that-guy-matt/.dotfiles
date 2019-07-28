if [ ! -d "$HOME/powerlevel9k" ]; then
	echo "Installing powerlevel9k theme..."
	if test $(which apt); then
		sudo apt install fonts-powerline -y
		git clone https://github.com/bhilburn/powerlevel9k.git $HOME/powerlevel9k
	fi
else
	echo "Powerlevel9k already exists"
fi
