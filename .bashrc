
# Check for an interactive session
[ -z "$PS1" ] && return

BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'              # No Color
export EDITOR=vim

set bell-style none
HISTCONTROL=ignoreboth

alias ls='ls --color=auto --time-style="+%Y%m%d %H:%M:%S" '
# TAIL
alias tail='tail -n20'
eval `dircolors -b`
export PS1="\[\][$(tput setaf 2)\u$(tput sgr0)@$(tput setaf 3)\h$(tput setaf 5) \w$(tput sgr0)] $(tput setaf 6)\\$ \[\]\[$(tput sgr0)\]"
#PS1='[\u@\h \W]\$ '
#PS1='\[\033[1;32m\]\u\[\033[0;00m\]@\[\033[1;35m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[31m\]\n\$ \[\033[0;00m\]'
#PS1='[\[\033[1;36m\]\w\[\033[0;00m\]] LL \[\033[1;31m\]$ \[\033[0;00m\]'
#PS1='\[\033[0;32m\][\[\033[0m\033[0;36m\]\u\[\033[0;00m\]@\[\033[0m\033[0;36m\]\h\[\033[0;32m\]][\[\033[0m\033[0;36m\]\t\[\033[0;32m\]][\[\033[0m\033[0;36m\]\w\[\033[0;32m\]]\n\[\033[0;32m\]\033[0;36m\]\$\[\033[0m\] '
#LC_ALL='sv_FI.ISO-8859-15'
complete -cf sudo

alias mplayer='mplayer -volume 7'
alias grep='grep --color=auto'
alias xterm='xterm -bg black -fg white'
# lowres=1:fast:
alias play='mplayer -vo xv -ao alsa -cache 65536 -volume 7 -subfont-osd-scale 3 -subfont-text-scale 3'
alias plav='mplayer -vo vaapi:gl -va vaapi -cache 65536 -volume 7 -subfont-osd-scale 3 -subfont-text-scale 3'
alias scr='screen -r'
alias scrl='screen -ls'
alias mv='mv -i'
#alias rm='rm -i'
alias ll='ls -l'
alias l1='ls -1'
alias la='ls -a'
alias lc='ls -ltcr'
alias lt='ls -tr'
alias ..='cd ..'
alias y='yaourt'
alias p='pacman'
alias s='sudo '
#alias pacman='pacman-color'
alias wget='wget --limit-rate=990K'
alias w='w -f'
alias urxvt='urxvt -e bash -c "cd ~;bash"'
alias psc='ps auxf | sort -nr -k 3 | head -10'
alias psm='ps auxf | sort -nr -k 4 | head -10'
alias px='ps auxf'
alias pxg='ps auxf|grep -i'
alias t='tmux'
alias g='git '
alias gs='git status'
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gln='git log --pretty=format:"%C(red)%h%C(reset) - %s %C(green)(%cr) %C(bold blue)<%an>%C(reset)" --name-only'
alias gls='git show --pretty=format:"%C(red)%h%C(reset) - %s %C(green)(%cr) %C(bold blue)<%an>%C(reset)"'

#source /etc/profile
source ~/gitdocs/private.sh
source ~/git-completion.bash
__git_complete g _git


