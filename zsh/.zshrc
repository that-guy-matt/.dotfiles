# path to zsh config files
ZSH_CONFIG="$HOME/.config/zsh"
ZINIT_DIR="$HOME/.config/zsh/.zinit"

# Sourced config files
# Load zinit and plugins
if [[ ! -f "$ZINIT_DIR/bin/zinit.zsh" ]]; then
  mkdir -p "$ZINIT_DIR"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_DIR/bin"
fi

# Source zinit and plugins
source "$ZINIT_DIR/bin/zinit.zsh"
source "$ZSH_CONFIG/plugins.zsh"

# Source modular config files
source "$ZSH_CONFIG/options.zsh"
source "$ZSH_CONFIG/aliases.zsh"

set +x  # Disable command tracing

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Platform specific PATHs
case "$(uname)" in
	Darwin)
		export PATH="/opt/homebrew/bin:$PATH"
    source "$HOME/.work.zsh"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    export PATH=$PATH:~/local/bin
	;;
	Linux)
		# unused at the moment
	;;
esac

# Call fastfetch
fastfetch -l "Aperture"

