
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

# set editor
if hash nvim 2>/dev/null; then
	export EDITOR="nvim"
	export SUDO_EDITOR="nvim"
elif hash vim 2>/dev/null; then
	export EDITOR="vim"
	export SUDO_EDITOR="vim"
else
	export EDITOR="vi"
	export SUDO_EDITOR="vi"
fi
export PATH=${PATH}:${HOME}/gitdocs/bin

set bell-style none
HISTCONTROL=ignoreboth
HISTSIZE=99999

eval `dircolors -b`
export PS1="\[\][$(tput setaf 2)\u$(tput sgr0)@$(tput setaf 3)\h$(tput setaf 5) \w$(tput sgr0)] $(tput setaf 6)\\$ \[\]\[$(tput sgr0)\]"
#PS1='[\u@\h \W]\$ '
#PS1='\[\033[1;32m\]\u\[\033[0;00m\]@\[\033[1;35m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[31m\]\n\$ \[\033[0;00m\]'
#PS1='[\[\033[1;36m\]\w\[\033[0;00m\]] LL \[\033[1;31m\]$ \[\033[0;00m\]'
#PS1='\[\033[0;32m\][\[\033[0m\033[0;36m\]\u\[\033[0;00m\]@\[\033[0m\033[0;36m\]\h\[\033[0;32m\]][\[\033[0m\033[0;36m\]\t\[\033[0;32m\]][\[\033[0m\033[0;36m\]\w\[\033[0;32m\]]\n\[\033[0;32m\]\033[0;36m\]\$\[\033[0m\] '
#LC_ALL='sv_FI.ISO-8859-15'

complete -cf sudo
complete -cf s

source ~/dotfiles/.aliases

#source /etc/profile
source ~/gitdocs/private.sh
source ~/git-completion.bash
source ~/.oh-my-zsh/lib/aliases.zsh
__git_complete g _git


