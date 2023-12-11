# Configure zsh
fpath=(~/.zsh $fpath)
eval "$(oh-my-posh init zsh --config /home/alejo/.cache/oh-my-posh/themes/cobalt2.omp.json)"

# Setup shell history
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export HISTTIMEFORMAT="[%F %T]"

autoload -Uz compinit && compinit

# Setup aliases
alias vi=vim

# Setup the environment
PATH=$PATH:/home/alejo/.devtools/diff-so-fancy
