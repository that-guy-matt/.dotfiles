# The following lines were added by compinstall

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

# Platform specific PATHs
case "$(uname)" in
	Darwin)
		export PATH="/opt/homebrew/bin:$PATH"
	;;
	Linux)
		# unused at the moment
	;;
esac

# Aliases
alias ls="ls --color=auto"
alias la="ls -a --color=auto"
alias ll="ls -l --color=auto"
alias lal="ls -la --color=auto"
