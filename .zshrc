# Path to your oh-my-zsh configuration.
# https://github.com/rulex/oh-my-zsh.git

# timer
t0=$(date '+%s.%N')

function lazy_source() {
    eval "$1 () { [ -f $2 ] && source $2 && $1 \$@ }"
}

NVM_SOURCE=$HOME/.nvm/nvm.sh
lazy_source nvm $NVM_SOURCE

# reload all open zsh .zshrc
trap "source ~/.zshrc && rehash" USR1
alias source_all="pkill -u $(whoami) -USR1 zsh"
alias __="source ~/.zshrc"

ZSH=$HOME/.oh-my-zsh
unset TMOUT

PATH="$PATH:$HOME/bin"

if [ -d "${HOME}/Sync/bin" ]; then
    PATH="$PATH:$HOME/Sync/bin"
fi

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

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
export TERMINAL="termite"

#export FZF_DEFAULT_COMMAND='rg --hidden -l ""'
export FZF_DEFAULT_COMMAND='find .'

# set editor
if hash nvim 2>/dev/null; then
    export EDITOR="nvim"
    export GIT_EDITOR="nvim"
    export VISUAL="nvim"
    export SUDO_EDITOR="nvim"
    export PAGER="nvim -c 'setf man' -"
elif hash vim 2>/dev/null; then
    export EDITOR="vim"
    export GIT_EDITOR="vim"
    export VISUAL="vim"
    export SUDO_EDITOR="vim"
    export PAGER="vim -c 'setf man' -"
else
    export EDITOR="vi"
    export GIT_EDITOR="vi"
    export VISUAL="vi"
    export SUDO_EDITOR="vi"
fi

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
plugins=(cp systemd archlinux docker mosh nmap redis-cli rsync battery docker-compose mosh nmap urltools git composer emoji npm nvm rust timer)
# NOTE custom plugin: bgnotify
#plugins=()

DISABLE_AUTO_UPDATE="true"
source $ZSH/oh-my-zsh.sh

# aliases
source ~/dotfiles/.aliases

fe() {
    # $1 OPTIONAL dir
    # $2 OPTIONAL start with query
    local file
    file=$(find -L ${1:-.} -type f -print 2> /dev/null | fzf +m -q "${2}") &&
        nvim "${file}"
}

# fd - cd to selected directory
fd() {
    local dir
    dir=$(find ${1:-.} -path '*/\.*' -prune \
        -o -type d -print 2> /dev/null | fzf +m) &&
        cd "$dir"
}

__fsel() {
    local cmd="${FZF_CTRL_T_COMMAND:-"command find -L . -mindepth 1 \\( -path '*/\\.git' -o -path '*/\\.svn' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
        -o -type f -print \
        -o -type d -print \
        -o -type l -print 2> /dev/null | cut -b3-"}"
    setopt localoptions pipefail 2> /dev/null
    eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-35%} --reverse $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" $(__fzfcmd) -m "$@" | while read item; do
        echo -n "${(q)item} "
    done
    local ret=$?
    echo
    return $ret
}

__fzfcmd() {
    __fzf_use_tmux__ &&
        echo "fzf-tmux -d${FZF_TMUX_HEIGHT:-40%}" || echo "fzf"
}

__fzf_use_tmux__() {
    [ -n "$TMUX_PANE" ] && [ "${FZF_TMUX:-0}" != 0 ] && [ ${LINES:-40} -gt 15 ]
}

fzf-file-widget() {
    LBUFFER="${LBUFFER}$(__fsel)"
    local ret file key
    local ret=$?
    zle redisplay
    typeset -f zle-line-init >/dev/null && zle zle-line-init
    #[ "$key" = ctrl-o ] && return "$file" || e "$file"
    #echo "ASDF ${key} ${ret}"
    return ${ret}
}
zle     -N   fzf-file-widget
bindkey '^T' fzf-file-widget
#bindkey '^F' fzf-file-widget

# cdf - cd into the directory of the selected file
cdf() {
    local file
    local dir
    file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}

# glf - git commit browser (enter for show, ctrl-d for diff, ` toggles sort)
glf() {
    local out shas sha q k
    while out=$(
            #--format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
        git log --graph --color=always \
            --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen[%ci (%cr)] %C(bold blue)<%an>%Creset' --abbrev-commit |
            fzf --ansi --multi --no-sort --reverse --query="${q}" --tiebreak=index \
            --print-query --expect=ctrl-d,ctrl-o --toggle-sort=\`); do
        q=$(head -1 <<< "${out}")
        k=$(head -2 <<< "${out}" | tail -1)
        shas=$(sed '1,2d;s/^[^a-z0-9]*//;/^$/d' <<< "${out}" | awk '{print $1}')
        [ -z "${shas}" ] && continue
        if [ "${k}" = 'ctrl-d' ] || [ "${k}" = 'ctrl-o' ]; then
            git diff --color=always ${shas} | less -R
        else
            for sha in ${shas}; do
                git show --color=always ${sha} | less -R
            done
        fi
    done
}

# ch - browse chrome history
ch() {
    local cols sep
    cols=$(( COLUMNS / 3 ))
    sep='{::}'
    cp -f ~/.config/chromium/Default/History /tmp/chrome-history
    sqlite3 -separator $sep /tmp/chrome-history \
        "select substr(title, 1, $cols), url from urls order by last_visit_time desc" |
        awk -F $sep '{printf "%-'$cols's  \x1b[36m%s\x1b[m\n", $1, $2}' |
        fzf --ansi --multi --no-hscroll --tiebreak=begin |
        sed 's#.*\(https*://\)#\1#' | xargs firefox
}

# fda - including hidden directories
fda() {
    local dir
    dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

# fh - repeat history
fh() {
    print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

# fhe - repeat history execute
fhe() {
    eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

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

bindkey "[1;2C" forward-word # termite shift-right
bindkey "[1;2D" backward-word # termite shift-left

unset GREP_OPTIONS

export REPORTTIME=3     # display time for cpu heavy cmds
export REPORTTIME_A=5   # do a notify-send
export REPORTTIME_AA=60 # do a notify-send and pushover

export NMON="ld"

export ZLE_REMOVE_SUFFIX_CHARS=""

# node nvm
if [ -f /usr/share/nvm/init-nvm.sh ];then
    source /usr/share/nvm/init-nvm.sh --no-use
fi

# grunt Zsh completion
#if hash grunt; then
#    eval "$(grunt --completion=zsh)"
#fi

CDPATH=:..:~:~/sandbox

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

function {
    local -i t1 startup
    t1=$( date '+%s.%N' )
    startup=$(( t1 - t0 ))
    [[ $startup -gt 1.0 ]] && print "Hmm, poor shell startup time: ${startup}"
}
unset t0

