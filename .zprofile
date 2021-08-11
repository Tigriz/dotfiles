# Localization
export LANG="en_US.UTF-8"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export READER="zathura"

# Clean-up
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Start DWM
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

