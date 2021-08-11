bindkey "^[[H"		beginning-of-line	# start of line key
# bindkey "^[[F"		end-of-line		# end of line key
bindkey '\e[4~' end-of-line

bindkey "^[[1;5D"	backward-word		# ctrl+left
bindkey "^[[1;5C"	forward-word		# ctrl+right

bindkey "^[[P"    delete-char   # del

bindkey "^H"		backward-kill-word	# ctrl+backspace
bindkey "^[[M"	kill-word		# ctrl+del

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey "^[[A" history-beginning-search-backward-end # up
bindkey "^[[B" history-beginning-search-forward-end # down

# édite la commande actuelle dans l'éditeur
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^E" edit-command-line # ctrl+e
