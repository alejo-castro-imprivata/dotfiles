# Enable Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# zsh history configuration
setopt APPEND_HISTORY            # append to history file
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_NO_STORE             # Don't store history commands
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

HISTFILE=~/.zsh_history
HISTFILESIZE=1000000
HISTSIZE=1000000
HISTTIMEFORMAT="[%F %T]"
SAVEHIST=1000000

autoload -Uz compinit
compinit

# Enable Oh-My-Posh
fpath=(~/.zsh $fpath)
eval "$(oh-my-posh init zsh --config /home/alejo/.cache/oh-my-posh/themes/cobalt2.omp.json)"

# Setup aliases
alias vi=vim
