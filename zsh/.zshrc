eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH=$PATH:~/local/bin
#alias pip /opt/homebrew/bin/pip3
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
export PYENV_ROOT="$HOME/.pyenv"
    command -v pyenv >/dev/null && eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle :compinstall filename '/home/matthew/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# User inputted items
[ -f "$HOME/.shell_exports" ] && source "$HOME/.shell_exports"
[ -f "$HOME/.aliases" ] && source "$HOME/.aliases"

# Platform specific PATHs
case "$(uname)" in
	Darwin)
		export PATH="/opt/homebrew/bin:$PATH"
	;;
	Linux)
		# unused at the moment
	;;
esac

clear
fastfetch -l "oracle"
export PATH_TO_FX="/Users/User/Documents/javafx-sdk-23.0.2/lib"
