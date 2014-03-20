
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
export PATH=${PATH}:${HOME}/gitdocs/bin

set bell-style none
HISTCONTROL=ignoreboth

alias ls='ls -F --color=auto --time-style="+%Y-%m-%d %H:%M:%S" '
# TAIL
alias tail='tail -n20'
eval `dircolors -b`
export PS1="\[\][$(tput setaf 2)\u$(tput sgr0)@$(tput setaf 3)\h$(tput setaf 5) \w$(tput sgr0)] $(tput setaf 6)\\$ \[\]\[$(tput sgr0)\]"
#PS1='[\u@\h \W]\$ '
#PS1='\[\033[1;32m\]\u\[\033[0;00m\]@\[\033[1;35m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[31m\]\n\$ \[\033[0;00m\]'
#PS1='[\[\033[1;36m\]\w\[\033[0;00m\]] LL \[\033[1;31m\]$ \[\033[0;00m\]'
#PS1='\[\033[0;32m\][\[\033[0m\033[0;36m\]\u\[\033[0;00m\]@\[\033[0m\033[0;36m\]\h\[\033[0;32m\]][\[\033[0m\033[0;36m\]\t\[\033[0;32m\]][\[\033[0m\033[0;36m\]\w\[\033[0;32m\]]\n\[\033[0;32m\]\033[0;36m\]\$\[\033[0m\] '
#LC_ALL='sv_FI.ISO-8859-15'

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
complete -cf sudo
complete -cf s
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
# Aliases
alias g='git'
alias gst='git status'
alias gd='git diff'
alias gdc='git diff --cached'
#alias gl='git pull'
#compdef _git gl=git-pull
alias gup='git pull --rebase'
alias gp='git push'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcm='git checkout master'
alias gr='git remote'
alias grv='git remote -v'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grset='git remote set-url'
alias grup='git remote update'
alias grbi='git rebase -i'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
alias gb='git branch'
alias gba='git branch -av'
alias gcount='git shortlog -sn'
alias gcl='git config --list'
alias gcp='git cherry-pick'
#alias glg='git log --stat --max-count=10'
#compdef _git glg=git-log
alias glgg='git log --graph --max-count=10'
alias glgga='git log --graph --decorate --all'
alias glo='git log --oneline'
alias gss='git status -s'
alias ga='git add'
alias gm='git merge'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gclean='git reset --hard && git clean -dfx'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

#remove the gf alias
#alias gf='git ls-files | grep'

alias gpoat='git push origin --all && git push origin --tags'
alias gmt='git mergetool --no-prompt'

alias gg='git gui citool'
alias gga='git gui citool --amend'
alias gk='gitk --all --branches'

alias gsts='git stash show --text'
alias gsta='git stash'
alias gstp='git stash pop'
alias gstd='git stash drop'

# Will cd into the top of the current repository
# or submodule.
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'
alias gwip='git add -A; git ls-files --deleted -z | xargs -0 git rm; git commit -m "--wip--"'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'

# these alias ignore changes to file
alias gignore='git update-index --assume-unchanged'
alias gunignore='git update-index --no-assume-unchanged'
# list temporarily ignored files
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gln='git log --pretty=format:"%C(red)%h%C(reset) - %s %C(green)(%cr) %C(bold blue)<%an>%C(reset)" --name-only'
alias gls='git show --pretty=format:"%C(red)%h%C(reset) - %s %C(green)(%cr) %C(bold blue)<%an>%C(reset)"'

#source /etc/profile
source ~/gitdocs/private.sh
source ~/git-completion.bash
source ~/.oh-my-zsh/lib/aliases.zsh
__git_complete g _git


