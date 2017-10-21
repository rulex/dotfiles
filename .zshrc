# Path to your oh-my-zsh configuration.
# https://github.com/rulex/oh-my-zsh.git
#

# reload all open zsh .zshrc
trap "source ~/.zshrc && rehash" USR1
alias source_all="pkill -u $(whoami) -USR1 zsh"

# timer
integer t0=$(date '+%s')

ZSH=$HOME/.oh-my-zsh
unset TMOUT

#
PATH="$PATH:$HOME/bin"

# ruby gems
if [ -f /usr/bin/ruby ]; then
    PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
fi

# php composer
if [ -f /usr/bin/composer ]; then
    PATH="$PATH:$HOME/.composer/vendor/bin"
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="rulex"

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

source ~/gitdocs/private.sh

#setopt completealiases

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13
# LOCALE
export LANG="en_US.UTF-8"
export LC_NUMERIC="sv_FI.UTF-8"
export LC_COLLATE="C"
export LC_TIME="sv_FI.UTF-8"
export LC_MONETARY="sv_FI.UTF-8"
export LC_MEASUREMENT="sv_FI.UTF-8"
export LC_CTYPE="sv_FI.UTF-8"
export LC_MESSAGES="en_US.UTF-8"

# set terminal for i3
export TERMINAL="urxvtc"

# set editor
if hash nvim 2>/dev/null; then
    export EDITOR="nvim"
    export GIT_EDITOR="nvim"
    export VISUAL="nvim"
    export SUDO_EDITOR="nvim"
elif hash vim 2>/dev/null; then
    export EDITOR="vim"
    export GIT_EDITOR="vim"
    export VISUAL="vim"
    export SUDO_EDITOR="vim"
else
    export EDITOR="vi"
    export GIT_EDITOR="vi"
    export VISUAL="vi"
    export SUDO_EDITOR="vi"
fi
export PAGER="vimpager"

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

#zmodload zsh/datetime || { print "can't load zsh/datetime"; return }
#function pretty_time() {
#    if (( $# == 0 )); then
#        echo 'Input required'
#        return 1
#    fi
#    # TODO: allow parameter to be both int & float
#    if [[ "${1}" =~ "."$ ]];then
#        local human total_seconds=${1%.*}
#    else
#        local human total_seconds=${1}
#    fi
#    #local human total_seconds=${1}
#    local days=$(( total_seconds / 60 / 60 / 24 ))
#    local hours=$(( total_seconds / 60 / 60 % 24 ))
#    local minutes=$(( total_seconds / 60 % 60 ))
#    local seconds=$(( total_seconds % 60 ))
#    (( days > 0 )) && human+="${days}d "
#    (( hours > 0 )) && human+="${hours}h "
#    (( minutes > 0 )) && human+="${minutes}m "
#    human+="${seconds}s"
#    echo "$human"
#    return
#}
#
#bgnotify_threshold=1
## args: (exit_status, command, elapsed_seconds)
#bgnotify_formatted () {
#    local exit_status=$1
#    local cmd="${2}"
#    local elapsed_seconds=$3
#    local str="cmd:   ${cmd}
#code:  ${exit_status}
#dir:   ${PWD}
#start: $(strftime "%Y-%m-%d %H:%M:%S" ${bgnotify_timestamp%.*}).${bgnotify_realtime#*.}
#time:  $( pretty_time ${elapsed_seconds} )
#end:   $(strftime "%Y-%m-%d %H:%M:%S" ${EPOCHSECONDS}).${EPOCHREALTIME#*.}
#tty:   ${TTY}"
#    bgnotify "${str}"
#}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(cp systemd archlinux docker mosh nmap redis-cli rsync battery docker-compose mosh nmap pip urltools git)
# NOTE custom plugin: bgnotify
#plugins=()

source $ZSH/oh-my-zsh.sh

# aliases
source ~/dotfiles/.aliases

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


bindkey "^[[1;3C" forward-word # Konsole alt-right
bindkey "^[[1;3D" backward-word # Konsole alt-left

bindkey "^[[3;3~" kill-word # Konsole alt-delete

bindkey "^[^[[C" forward-word # Urxvt alt-right
bindkey "^[^[[D" backward-word # Urxvt alt-left

bindkey "^[^[OC" forward-word # Urxvt mosh alt-right
bindkey "^[^[OD" backward-word # Urxvt mosh alt-left

unset GREP_OPTIONS

export REPORTTIME=3 # display time for cpu heavy cmds
export REPORTTIME_A=5 # do a notify-send
export REPORTTIME_AA=60 # do a notify-send and pushover

export NMON="ld"

export ZLE_REMOVE_SUFFIX_CHARS=""

function {
    local -i t1 startup
    t1=$( date '+%s' )
    startup=$(( t1 - t0 ))
    [[ $startup -gt 1 ]] && print "Hmm, poor shell startup time: $startup"
}
unset t0

# node nvm
if [ -f /usr/share/nvm/init-nvm.sh ];then
    source /usr/share/nvm/init-nvm.sh
fi

# grunt Zsh completion
#if hash grunt; then
#    eval "$(grunt --completion=zsh)"
#fi

#
CDPATH=:..:~:~/sandbox

