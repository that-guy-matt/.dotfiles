# .dotfiles
These are my dotfiles.

I discovered dotfiles while researching how to sync my system settings across multiple systems. 

The goal of these dotfiles are to sync and entirely install and setup my environment between systems...
This is a work in progress and as of right now, it just install and sets up a couple of things for my terminal.

I borrowed a bit from zach holman to get the install/bootstrap scripts working. I also borrowed some of his scripts to set up the zshrc file. So, thanks to him for this.

I have tested this only using Ubuntu. It should work for other Debian based systems but I haven't tested this.

## Install

I set this up that when the install script is run, it installs necessary programs and sets up the powerlevel9k theme.

For a first time setup, the installer should be run first which will install all the programs listed in install.sh script files. From within .dotfiles/setup as root or with sudo:

    bash install

After running the installer, running the bootstrap script (borrowed from Zach Holman) will set up all symlinks so they do not have to be symlinked again. From within .dotfiles/setup as root or with sudo:

    bash bootstrap

You will have to restart the computer before zsh will become the default shell.

These scripts will only need to be run again if you add new install scripts or symlink files, or if any install scripts are edited.

## Usage

Similarly to Zach Holman's dotfiles, mine are topical and various files will be run or linked based on the file extension.

