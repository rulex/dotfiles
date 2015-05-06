# Path to your oh-my-zsh configuration.
# https://github.com/rulex/oh-my-zsh.git
#
ZSH=$HOME/.oh-my-zsh
unset TMOUT

# aliases
source ~/.aliases

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


bindkey "^[[1;3C" forward-word # Konsole alt-right
bindkey "^[[1;3D" backward-word # Konsole alt-left

bindkey "^[^[[C" forward-word # Urxvt alt-right
bindkey "^[^[[D" backward-word # Urxvt alt-left

bindkey "^[^[OC" forward-word # Urxvt mosh alt-right
bindkey "^[^[OD" backward-word # Urxvt mosh alt-left

