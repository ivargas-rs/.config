# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
bindkey -v

# ask for ssh password on prompt
eval $(keychain --eval --quiet id_ed25519)

#PROMPT="%(!.%{%B%F{red}%}.%{%B%F{green}%})→ %n@%m %{%B%F{blue}%}%2~ %(!.Λ.λ)%f%b "
PROMPT="%{%B%F{white}%}%(!.Λ.λ) %{%B%F{cyan}%}%2~ %(!.%{%B%F{green}%}>%{%B%F{cyan}%}>%{%B%F{green}%}>.%{%B%F{cyan}%}>%{%B%F{magenta}%}>%{%B%F{cyan}%}>)%f%b "

autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# History
HISTSIZE=1000
HISTFILE=~/.histzsh
SAVEHIST=5000

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt share_history

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

export EDITOR='nvim'

# Aliases
alias cls='clear'
