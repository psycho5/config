# Author: Sagar Baver (https://github.com/psycho5).
# Personal configurations of the Z-shell.
# Predominantly rely on oh-my-zsh framework (https://github.com/robbyrussell/oh-my-zsh).

#-----------------------------------
# Mac OS X High Sierra PATH variable
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home"
export MYSQL_HOME="/usr/local/mysql"
export COMPOSER_HOME="~/.composer/vendor"
export GRADLE_HOME="/usr/local/bin/gradle"

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$JAVA_HOME:$MYSQL_HOME/bin:$COMPOSER_HOME/bin:$GRADLE_HOME:$PATH
#-----------------------------------

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="kennethreitz"
ZSH_THEME=""

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
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Antigen zsh plugin manager: https://github.com/zsh-users/antigen
source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh

# Antigen bundles
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm

# Load the theme.
# antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#-Preferred editor for local and remote sessions-
export EDITOR='vim'
# if [[ -n $SSH_CONNECTION ]]; then
   # export EDITOR='vim'
# else
   # export EDITOR='vim'
# fi
#------------------------------------------------

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#---------------------------------------------------------------
# Set variables for Python's virtualenvwrapper
# http://virtualenvwrapper.readthedocs.io/en/latest/install.html
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh
#---------------------------------------------------------------
#
#-----------------------------------------------------
# Custom aliases defined within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias ls='ls -FGh'
alias ll='ls -laFGh'
alias lla='ls -laFGh | grep "^d" && ls -lFGah | grep "^-" && ls -lFGah | grep "^l"'

ALIASFILE="$ZSH_CUSTOM/.aliasesrc"
source $ALIASFILE
#-----------------------------------------------------

#----------------------------------------------------
# Run cowsay and fortune formulae on terminal startup
fortune | cowsay
#----------------------------------------------------

eval $(thefuck --alias)

#---------------- Node version manager settings---------------------
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# This auto loads nvm version in a dir with .nvmrc
# autoload -U add-zsh-hook
# load-nvmrc() {
#   local node_version="$(nvm version)"
#   local nvmrc_path="$(nvm_find_nvmrc)"
# 
#   if [ -n "$nvmrc_path" ]; then
#     local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")
# 
#     if [ "$nvmrc_node_version" = "N/A" ]; then
#       nvm install
#     elif [ "$nvmrc_node_version" != "$node_version" ]; then
#       nvm use
#     fi
#   elif [ "$node_version" != "$(nvm version default)" ]; then
#     echo "Reverting to nvm default version"
#     nvm use default
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# load-nvmrc
#-------------------------------------------------------------------

# export CLICOLOR=1
# export LSCOLORS=ExFxBxDxCxegedabagacad

#--------------------------Pure prompt--------------------------------
# Pure prompt set as ZSH theme (https://github.com/sindresorhus/pure).
# Important to load this after sourcing `oh-my-zsh.sh`.
# Note: Set `ZSH_THEME=""` for pure prompt to take over.
autoload -U promptinit; promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=7

prompt pure
#---------------------------------------------------------------------

#--------------------------ZSH syntax highlight----------------------------
# ZSH command line syntax highlighting
# Run `brew install zsh-syntax-highlighting` first
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#--------------------------------------------------------------------------
