# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

source $ZSH/oh-my-zsh.sh

#
alias "SYNC=sync;sync;sync"
alias "c=clear"
alias "cd..=cd .."
alias "cd...=cd ../.."
alias "cls=clear"
alias "d=ls -l"
alias "dir=ls -l"
alias "docker.cleanimages=docker images | grep '^<none>' | awk '{print \$3}' | xargs docker rmi"
alias "docker.cleanps=docker ps --all | grep Exited | awk '{print \$1}' | xargs docker rm"
alias "f=finger"
alias "g=grep --color=auto"
alias "gph=git push -v --follow-tags"
alias "gpl=git pull -v --rebase --recurse-submodules=yes"
alias "l=last"
alias "lo=logout"
alias "m=more"
alias "more=most"
alias "myip=curl -s https://httpbin.org/ip | jq .origin"
alias "psa=ps aux"
alias "psm=ps -U $USER"
alias "psr=psu root"
alias "psu=ps -U"
alias "repo=cd ~/Development/shazi7804.github"
alias "s=screen"
alias "smic=sudo make install clean"
alias "ssh=ssh -C -e none -v"
alias "t=telnet"

# specify ssh complete connections
alias "tun=ssh tun"
alias "tundr=ssh tundr"
