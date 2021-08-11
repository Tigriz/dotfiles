# Adding personal scripts
export PATH="$PATH:/home/user/.local/bin"

# Environment variables
source "$ZDOTDIR/env.zsh"

# Plugins
ZSH_PLUGINS_DIR="$ZDOTDIR/plugins"
source "$ZSH_PLUGINS_DIR/sudo.zsh"

# Key bindings
source "$ZDOTDIR/bindings.zsh"

# Aliases
source "$ZDOTDIR/aliases.zsh"

# Enable colors
autoload -U colors && colors

# Disable ctrl-s ctrl-q for pausing and resuming terminal
stty -ixon

# Theme
source "$ZDOTDIR/themes/main.zsh"

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_CACHE_HOME/zsh/history"

# Autocompletion
autoload -U compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ":completion:*" menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) 		# include hidden files

# http://zsh.sourceforge.net/Doc/Release/Options.html
setopt auto_list
setopt menu_complete

alias zrefresh="source \"$ZDOTDIR/.zshrc\""

source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# miniconda
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
