# Path to your oh-my-zsh configuration.
# https://github.com/rulex/oh-my-zsh.git
#
ZSH=$HOME/.oh-my-zsh
unset TMOUT

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="rulex"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias please='sudo'
alias rm='rm -I'

#alias g='grep -in'

# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi
# List direcory contents
alias ls='ls -F --color=auto --time-style="+%Y-%m-%d %H:%M:%S" '
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -l'
alias la='ls -lA'
alias lc='ls -lthrc'
alias lca='ls -ltrca'
alias sl=ls
alias dt='date +"%Y-%m-%dT%H:%M:%S"'

alias grep='grep --color=auto'

alias afind='ack-grep -il'

alias xterm='xterm -bg black -fg white'

alias p='pacman'
alias P='packer'
alias s='sudo '
alias w='w -f'
alias px='ps auxf'
alias pxg='ps auxf|grep -i'
alias t='tmux'
alias ds='du --time --time-style="+%Y-%m-%d %H:%M:%S" -sh * | sort -k 1 -h'
alias netlisteners='lsof -i -P | grep LISTEN'
alias g='git'
alias gs='git status'
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glga="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias gln='git log --pretty=format:"%C(red)%h%C(reset) - %s %C(green)(%cr) %C(bold blue)<%an>%C(reset)" --name-only'
alias gls='git show --pretty=format:"%C(red)%h%C(reset) - %s %C(green)(%cr) %C(bold blue)<%an>%C(reset)"'
alias glc='git shortlog --no-merges -nes'

source ~/gitdocs/private.sh

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13
# LOCALE
export LANG="en_US.UTF-8"
export LC_NUMERIC="sv_SE.UTF-8"
export LC_COLLATE="C"
export LC_TIME="sv_SE.UTF-8"
export LC_MONETARY="sv_SE.UTF-8"
export LC_MEASUREMENT="sv_SE.UTF-8"
export LC_CTYPE="sv_SE.UTF-8"
export LC_MESSAGES="en_US.UTF-8"

export EDITOR="vim"
export SUDO_EDITOR="vim"



# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=( cp git npm systemd archlinux docker mosh rsync )

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/gitdocs/bin
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


