###################### Virtualenvwrapper installation ####################

# Initialize autoenv
source `brew --prefix`/opt/autoenv/activate.sh
# Initialize virtualenvwrapper
source `brew --prefix`/bin/virtualenvwrapper_lazy.sh

# The use_env call below is a reusable command to activate/create a new Python
# virtualenv, requiring only a single declarative line of code in your .env files.
# It only performs an action if the requested virtualenv is not the current one.
use_env() {
  typeset venv
  venv="$1"
  if [[ `basename "${VIRTUAL_ENV:t}"` != "$venv" ]]; then
    if workon | grep $venv > /dev/null; then
      workon "$venv"
    else
      echo -n "Create virtualenv $venv now? (Yn) "
      read answer
      if [[ "$answer" == "Y" ]]; then
        mkvirtualenv "$venv"
      fi
    fi
  fi
}

# Setting PATH for Python 3.3
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH

############################# Default shit ###############################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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
plugins=(git bower brew osx pip python web-search zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/heroku/bin:/Library/Frameworks/Python.framework/Versions/3.3/bin:/Applications/Postgres.app/Contents/Versions/9.4/bin:/usr/local/share/npm/bin:/usr/local/share/python:/usr/local/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
DEFAULT_USER="adarsh"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zrc="vim ~/.zshrc"
alias szrc="source ~/.zshrc"
alias omzrc="vim ~/.oh-my-zsh"
alias vrc="vim ~/.vimrc"
alias tcnf="vim ~/.tmux.conf"
alias r="reset"
alias mps='ps aux | awk "/python manage\.py runserver/{print \$2;}" | xargs kill -9'
# alias bower='./node_modules/bower/bin/bower'
alias todo='subl ~/Desktop/stuff.todo'
alias e="emacs"
alias f="fpp"
alias v="vim"
alias t="tmux"

################################### MORE OF MY SHIT #################################

PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
export PATH

# Setting PATH for Python 3.3
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH

# man page autocompletion
zstyle ':completion:*:manuals'    separate-sections true
zstyle ':completion:*:manuals.*'  insert-sections   true
zstyle ':completion:*:man:*'      menu yes select

# Load zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions
# Load zsh-autosuggestions.
source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh

# Enable autosuggestions automatically.
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1

eval "$(thefuck --alias)"

# 10ms for key sequences
KEYTIMEOUT=1
# Enable autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

export DYLD_FORCE_FLAT_NAMESPACE=1

export OPEN_WEATHER_MAP_CITY_ID=658225
