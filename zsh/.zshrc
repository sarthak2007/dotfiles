

# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/sarthak/.oh-my-zsh

#POWERLEVEL9K_MODE='awesome-fontconfig '
POWERLEVEL9K_MODE="nerdfont-complete placement"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_TIME_BACKGROUND=black
POWERLEVEL9K_TIME_FOREGROUND=white
POWERLEVEL9K_TIME_FORMAT=%D{%I:%M:%S}
#POWERLEVEL9K_FOLDER_ICON="\e5ff"
#POWERLEVEL9K_CUSTOM_OS_ICON
#POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND=red
#POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND=white
POWERLEVEL9K_VCS_UNSTAGED_ICON=""
POWERLEVEL9K_VCS_STAGED_ICON=""
POWERLEVEL9K_VCS_UNTRACKED_ICON=""
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_os_icon ssh root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status background_jobs time)
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT=true
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
HIST_STAMPS="mm/dd/yyyy"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias gc="/usr/bin/google-chrome"
alias g++="g++ -std=c++17"
alias gmm="gcc myshell.c -L/usr/local/lib -I/usr/local/include -lreadline "
alias sql="mysql -u root -p"
alias godinst="sudo apt-get install"
alias godupd="sudo apt-get update"
alias godupg="sudo apt-get upgrade"

# connect to IITK VPN
alias connect_iitk="/opt/forticlient-sslvpn/64bit/forticlientsslvpn_cli --server gateway.iitk.ac.in:443 --vpnuser ssinghal" 

# alias python="usr/bin/python2"
export ANDROID_HOME=$HOME/android-sdk-linux
export ANDROID_SDK_ROOT=$HOME/android-sdk-linux
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
echo "Hi! Sarthak"
#figlet Sarthak

# function to return ip address
function myip(){
echo "Your IP address is "
ifconfig | grep "inet " | awk '{print $2}'	
}

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
RPROMPT="[%D{%f/%m/%y}|%D{%L:%M:%S}]"

alias cl='clear'
#alias python='python3'

bindkey "^[[1;3D" beginning-of-line
bindkey "^[[1;3C" end-of-line

# 10 second wait if you do something that will delete everything.  I wish I'd
# had this before...
setopt RM_STAR_WAIT

# Function to connect to wifi with first argument as SSID
function connect_wifi(){
    if [ `nmcli d | grep wlp5s0 | tr -s " " | cut -d" " -f3` = 'connected' ]; then  
      nmcli d disconnect wlp5s0
    fi
    nmcli c up "$1"
}

# Add path for bluejeans directory
export PATH=$PATH:/opt/BlueJeans
