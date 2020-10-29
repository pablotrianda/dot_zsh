
export ZSH="/home/pablo/.oh-my-zsh"

ZSH_THEME="agnoster"

ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Aliases
alias open="xdg-open "$@">/dev/null 2>&1"
alias ka="python $HOME/Utilities/keep_alive.py"
alias android="/home/pablo/android-studio/bin/studio.sh"
alias v="vim"
alias '?'="web_search"

function web_search(){
    args="$*"
    search=""
    for (( i=0; i<=${#args}; i++ )); do
       if [[ ! -z "$args[i]"  && " " != $args[i] ]]
       then
          search+="$args[i]+";
       fi
    done;
    lynx "https://lite.duckduckgo.com/lite/?q=$search"

}

# Varaible path
export ANDROID_STUDIO_PATH="/home/pablo/android-studio"
export PATH="/home/pablo/.local/bin:$PATH"

# Go variables
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin
export GO111MODULE=on

