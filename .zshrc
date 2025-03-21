# -----------------
# Zsh configuration
# -----------------
export PATH=$PATH:/usr/local/bin:/usr/local/sbin

# ------------------
# History
# ------------------
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_ALL_DUPS

# ------------------
# Input/output
# ------------------

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -e

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# ------------------
# Initialize modules
# ------------------

if [[ ${ZIM_HOME}/init.zsh -ot ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Update static initialization script if it's outdated, before sourcing it
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind up and down keys
zmodload -F zsh/terminfo +p:terminfo
if [[ -n ${terminfo[kcuu1]} && -n ${terminfo[kcud1]} ]]; then
  bindkey ${terminfo[kcuu1]} history-substring-search-up
  bindkey ${terminfo[kcud1]} history-substring-search-down
fi

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# }}} End configuration added by Zim install

# ------------------
# Alias
# ------------------
alias "SYNC=sync;sync;sync"
alias "c=clear"
alias "cd..=cd .."
alias "cd...=cd ../.."
alias "cls=clear"
# alias "ls=exa"
# alias "la=exa -al"
# alias "ll=exa -l"
# alias "d=exa -l"
alias "f=finger"
alias "g=grep --color=auto"

alias "l=last"
alias "lo=logout"
alias "m=more"
alias "more=most"
alias "myip=curl -s https://httpbin.org/ip | jq .origin"
alias "psa=ps aux"
alias "psm=ps -U $USER"
alias "psr=psu root"
alias "psu=ps -U"
alias "repo=cd ~/Github"
alias "smic=sudo make install clean"
alias "ssh=ssh -C -e none -v"
alias "t=telnet"
# git
alias "gph=git push -v --follow-tags"
alias "gpl=git pull -v --rebase --recurse-submodules=yes"
alias "gl=git log --pretty=format:'%C(auto)%h %an %as %s'"
alias "gdf=git status --short | fzf --multi --color=dark --cycle --border --ansi --preview-window=up:70% --preview=\"git diff --color {+2}\" | awk '{print \$2}'"
alias "gadd=git status --short | fzf --multi --color=dark --cycle --border --ansi --preview-window=up:70% --preview=\"git diff --color {+2}\" | awk '{print \$2}' | xargs git add"

# ------------------
# Other
# ------------------
# Added by travis gem
[ ! -s ~/.travis/travis.sh ] || source ~/.travis/travis.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# command-line fuzzy finder of https://github.com/junegunn/fzf
# for examples:
#   $ fzf
#   $ ssh **
#   $ telnet **
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# -----------------
# Include
# -----------------
source ~/.zshrc.local



