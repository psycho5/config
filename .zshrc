# Author: Sagar Baver (https://github.com/sagarbaver).
# My configurations of the Z-shell.
# Predominantly rely on oh-my-zsh framework (https://github.com/robbyrussell/oh-my-zsh).

# PATH variables
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$(yarn global bin):~/.local/bin:$PATH

# Other variables
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home"
export MYSQL_HOME="/usr/local/mysql"
export COMPOSER_HOME="~/.composer/vendor"
export GRADLE_HOME="/usr/local/bin/gradle"

# AWS environment variables
export AWS_SDK_LOAD_CONFIG=1

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# powerlevel9k theme customizations
# https://github.com/bhilburn/powerlevel9k#prompt-customization
POWERLEVEL9K_MODE='nerdfont-complete'

# p9k segments display settings
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user context dir vcs dir_writable)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time root_indicator node_version background_jobs ram disk_usage)

# p9k prompt display settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}"$'\u256D\u2500'"%F{white}" # ╭─
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}"$'\u2570\uf460'"%F{white}" # ╰

# p9k context segment settings
DEFAULT_USER=`whoami`

# p9k node_version segment settings
POWERLEVEL9K_NODE_VERSION_FOREGROUND="black"

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
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew history zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set variables for Python's virtualenvwrapper
# http://virtualenvwrapper.readthedocs.io/en/latest/install.html
# export WORKON_HOME=$HOME/.virtualenvs
# export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
# source /usr/local/bin/virtualenvwrapper_lazy.sh


# Custom aliases defined within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
ALIASFILE="$ZSH_CUSTOM/.aliasesrc"
source $ALIASFILE

# Runs cowsay and fortune formulae on terminal startup
# fortune | cowsay
# eval $(thefuck --alias)

# NVM(Node Version Manager) config
# https://github.com/creationix/nvm#git-install
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Pure prompt set as ZSH theme (https://github.com/sindresorhus/pure).
# Important to load this after sourcing `oh-my-zsh.sh`.
# Note: Set `ZSH_THEME=""` for pure prompt to take over.
# autoload -U promptinit; promptinit

# optionally define some options
# PURE_CMD_MAX_EXEC_TIME=7

# prompt pure
source "$HOME/.zshrc-`uname`"
