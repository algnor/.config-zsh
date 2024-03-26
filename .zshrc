### ----  ZSH HOME ------------------------------------------
export ZSH=$HOME/.zsh

### ---- history config -------------------------------------
export HISTFILE=$ZSH/.zsh_history

export HISTSIZE=10000 		# How many commands zsh will load to memory.
export SAVEHIST=10000 		# How many commands history will save on file.
setopt HIST_IGNORE_ALL_DUPS 	# History won't save duplicates.
setopt HIST_FIND_NO_DUPS 	# History won't show duplicates on search.

### ---- Themes ---------------------------------------------
source $ZSH/plugins/fast-syntax-highlighting/F-Sy-H.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)

# Agnoster theme
DEFAULT_USER=$USER
setopt prompt_subst 
source $ZSH/plugins/agnoster-zsh-theme/agnoster.zsh-theme

### ---- Keybinds -------------------------------------------
zstyle ':completion:*' menu select 			# tab completion highlighting
zmodload zsh/complist					# load complist for
bindkey -M menuselect '^[[Z' reverse-menu-complete	# shift tab for previous
bindkey -M menuselect '\e' send-break			# esc to exit tab menu, takes a while to exit though, so using ctrl+c is faster


### ---- Programs -------------------------------------------

# ls
alias ls="ls --color=auto"

# NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:$HOME/.local/bin


# Begin: PlatformIO Core completion support
eval "$(_PIO_COMPLETE=zsh_source pio)"
# End: PlatformIO Core completion support

