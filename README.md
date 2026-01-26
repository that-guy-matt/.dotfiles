These are my new dotfiles. 
My old ones were a bit complex and at some point they stopped working properly and I didn't bother to fix them.
The goal of this version of my dotfiles is to simplify the system by using GNU stow instead of custom scripting.
I may add scripts in the future, but only if they will not add complexity. I want these dotfiles to easily install on any Linux system without a struggle.
My old dotfiles are still accessible through a branch labeled dotfiles-old.

## Fonts used
* Hack Nerd Font
* Dparture
* Open Dyslexic (as an option)

## Color theme
I am currently using catpuccin mocha as the terminal color theme. I am not sure I like it, but it seems popular. I may replace this if I stumble upon a better color theme.
I have added options to change themes to dracula or nord

## Dependencies
These dotfiles assume the following are installed:
1. i3
2. picom
3. zsh or bash
4. the prior mentioned nerdfonts
5. fastfetch
6. polybar
7. stow
8. neovim

## kickstart-modular.nvim installation
Dependencies:
1. Basic utilities: git, make, unzip, gcc
2. ripgrep, fd-find

Ensure treesitter install directory is in runtimepath (need to fix this. shouldn't edit kickstart's init.lua)
Add this code to the top of init.lua:
```
-- Ensure treesitter install dir is in runtimepath
local install_dir = vim.fn.stdpath("data") .. "/site"
if not vim.tbl_contains(vim.opt.rtp:get(), install_dir) then
  vim.opt.rtp:append(install_dir)
end
```

## Steps
1. Install dependencies
2. Change shell to zsh if not the default
    a. chsh -s /usr/bin/zsh
3. Install GNOME keyboard shortcuts, run .dotfiles/gnome/gnome-restore.sh
    a. Currently only window management shortcuts work. Application shortcuts do not. I need to look at this.
