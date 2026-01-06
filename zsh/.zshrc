# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH=$PATH:~/local/bin

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
source "$ZSH_CONFIG/.plugins.zsh"

# Source modular config files
source "$ZSH_CONFIG/.options.zsh"
source "$ZSH_CONFIG/.aliases.zsh"

# Plugins
# Powerlevel10k
[[ -f "$HOME/.config/zsh/.p10k.zsh" ]] && source "$HOME/.config/zsh/.p10k.zsh"


# Platform specific PATHs
case "$(uname)" in
	Darwin)
		export PATH="/opt/homebrew/bin:$PATH"
    source "$HOME/.work.zsh"
	;;
	Linux)
		# unused at the moment
	;;
esac

clear
fastfetch -l "oracle"

# Start debugging
echo "Starting .zshrc loading..." >> ~/zsh_debug.log
set -x  # Enable command tracing

# Define config directory
ZSH_CONFIG="$HOME/.config/zsh"
echo "Config dir is: $ZSH_CONFIG" >> ~/zsh_debug.log

# Source aliases, plugins, options, etc.
echo "Sourcing aliases.zsh" >> ~/zsh_debug.log
source "$ZSH_CONFIG/aliases.zsh" >> ~/zsh_debug.log 2>&1

echo "Sourcing plugins.zsh" >> ~/zsh_debug.log
source "$ZSH_CONFIG/plugins.zsh" >> ~/zsh_debug.log 2>&1

echo "Sourcing options.zsh" >> ~/zsh_debug.log
source "$ZSH_CONFIG/options.zsh" >> ~/zsh_debug.log 2>&1

echo "Sourcing keybindings.zsh" >> ~/zsh_debug.log
source "$ZSH_CONFIG/keybindings.zsh" >> ~/zsh_debug.log 2>&1

# Source Powerlevel10k if available
if [[ -f "$ZSH_CONFIG/.p10k.zsh" ]]; then
  echo "Sourcing .p10k.zsh" >> ~/zsh_debug.log
  source "$ZSH_CONFIG/.p10k.zsh" >> ~/zsh_debug.log 2>&1
fi

echo "Finished sourcing .zshrc" >> ~/zsh_debug.log
set +x  # Disable command tracing

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
