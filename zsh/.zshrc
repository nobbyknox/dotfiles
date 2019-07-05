# Path to your oh-my-zsh installation.
export ZSH=/Users/nobby/.oh-my-zsh

DEFAULT_USER="nobby"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="amuse"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# 2019-04-19: Removed zsh-completions
plugins=(git osx zsh-autosuggestions)

# User configuration

export PATH="/Users/nobby/bin:/Users/nobby/Apps/sbt/bin:/Applications/MacVim.app/Contents/MacOS:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/aria2/bin:/Users/nobby/Library/Python/2.7/bin"
export PATH=$PATH:/Users/nobby/Apps/gradle-5.4.1/bin
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# unalias ll
# unalias la
# unalias ls

alias ll='CLICOLOR_FORCE=1 ls -lh $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX'
alias la='CLICOLOR_FORCE=1 ls -lah $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX'
alias lll='CLICOLOR_FORCE=1 ls -lah $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX'

alias prettyjson='python -mjson.tool'
alias dk='docker'
alias dps='docker ps -a'
alias dkps='docker ps -a'
alias kc='kubectl'

alias glasgow='cd /Users/nobby/dev/8lnx/glasgow'
alias jango='cd /Users/nobby/dev/8lnx/jango'
alias cloud-city='cd /Users/nobby/dev/8lnx/cloud-city'
alias landing-pad-nine='cd /Users/nobby/dev/bookmark-pivot/landing-pad-nine'
alias raxus='cd /Users/nobby/dev/bookmark-pivot/raxus'

# vi mode
bindkey -v

# Include a few functions
source ~/.functions.sh

export PROMPT='
[%m] %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) ⌚ %{$fg_bold[red]%}%*%{$reset_color%}
$ '

export EDITOR=nvim

# AWS config
export AWS_PROFILE=bookmarkpivot

# Node version manager stuff
export NVM_DIR="/Users/nobby/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# source /Users/nobby/Apps/google-cloud-sdk/completion.zsh.inc
# source /Users/nobby/Apps/google-cloud-sdk/path.zsh.inc

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
export SPACESHIP_VI_MODE_SHOW=false
export SPACESHIP_DOCKER_SHOW=false
export SPACESHIP_AWS_SHOW=true
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_KUBECONTEXT_SHOW=false
prompt spaceship
