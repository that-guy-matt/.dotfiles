#!/bin/bash
# gnome-restore.sh restores custom gnome settings that cannot be symlinked.

set -e
echo "Restoring GNOME settings..."

# Apply workspace settings
dconf load /org/gnome/mutter/ < ~/.dotfiles/gnome/gnome-wm-preferences.dconf
dconf load /org/gnome/desktop/wm/preferences/ < ~/.dotfiles/gnome/gnome-wm-preferences.dconf

# Apply workspace switching keybindings
dconf load /org/gnome/desktop/wm/keybindings/ < ~/.dotfiles/gnome/gnome-keybindings.dconf

# Apply custom app shortcuts
dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ < ~/.dotfiles/gnome/gnome-custom-keybindings.dconf

# Load file also to parent directory to solve missing array... 
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < ~/.dotfiles/gnome/gnome-custom-keybindings.dconf

echo "Done!"
