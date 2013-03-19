autoload -U compinit promptinit
compinit
promptinit
 
# This will set the default prompt to the walters theme
prompt walters
WORDCHARS='*?[]~=&;!#$%^(){}<>'

bindkey -e
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "^[" delete-word
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
####################################
export PATH=${PATH}:${HOME}/gitdocs/bin
export EDITOR=vim
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export HIST_IGNORE_SPACE
eval `dircolors -b`
autoload -U compinit compinit
setopt autopushd pushdminus pushdsilent pushdtohome
setopt autocd
setopt cdablevars
setopt ignoreeof
setopt interactivecomments
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt nobanghist
setopt noclobber
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt SH_WORD_SPLIT
setopt nohup
setopt NO_auto_remove_slash
#setopt completealiases

# PS1 and PS2
export PS1="$(print '%{\e[0m%}[%T] %{\e[0;36m%}$ %{\e[0m%}')"
#export PS1="$(print '%{\e[1;36m%}%n'):$(print '%{\e[0;34m%}%{\e[0m%}')$ "
export PS2="$(print '%{\e[0;34m%}>%{\e[0m%}')"

##################################################################
# Stuff to make my life easier

# allow approximate
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# cd not select parent dir
zstyle ':completion:*:cd:*' ignore-parents parent pwd

#typeset -g -A key
##################################################################
# My aliases
alias ls='ls -F --color=auto --time-style="+%Y-%m-%d %H:%M:%S" '

# Normal aliases
alias lsd='ls -ld *(-/DN)'
alias lsa='ls -ld .*'
alias f='find |grep'
alias dir='ls -1'
alias ..='cd ..'

# command L equivalent to command |less
alias -g L='|less' 

# command S equivalent to command &> /dev/null &
alias -g S='&> /dev/null &'

alias mplayer='mplayer -volume 60'
alias grep='grep --color=auto'
alias xterm='xterm -bg black -fg white'
# lowres=1:fast:
#alias play='mplayer -vo ql_nosw -volume 7' 
alias play='mplayer -vo gl_nosw -cache 65536 -channels 2'
alias plav='mplayer -vo vaapi:gl -va vaapi -cache 65536 -subfont-osd-scale 3 -subfont-text-scale 3'
alias vlc='vlc --extraintf=http'
alias mv='mv -i'
#alias rm='rm -i'
alias l='ls -l'
alias ll='ls -l'
alias l1='ls -1'
alias la='ls -a'
alias lc='ls -ltcr'
alias lct='ls -ltcr $@|tail -n5'
alias lt='ls -tr'
alias p='pacman-color'
alias P='packer'
alias s='sudo '
alias w='w -f'
alias urxvt='urxvt -e bash -c "cd ~;bash"'
alias px='ps auxf'
alias pxg='ps auxf|grep -i'
alias youtube-dl='youtube-dl --max-quality=MP4'
alias t='tmux'
alias screenon='xset s reset && xset dpms force on'
alias externalip='curl http://dynamic.zoneedit.com/checkip.html'
alias chromium='chromium --scroll-pixels=200 --disk-cache-dir=/tmp/siaw-chromium-cache/'
alias ds='du --time --time-style="+%Y-%m-%d %H:%M:%S" -sh * | sort -k 1 -h'
alias netlisteners='lsof -i -P | grep LISTEN'
alias g='git'
alias gs='git status'
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gln='git log --pretty=format:"%C(red)%h%C(reset) - %s %C(green)(%cr) %C(bold blue)<%an>%C(reset)" --name-only'
alias gls='git show --pretty=format:"%C(red)%h%C(reset) - %s %C(green)(%cr) %C(bold blue)<%an>%C(reset)"'

source ~/gitdocs/private.sh


