# focused on mac

export ZSH=$HOME/.oh-my-zsh

TERM="xterm-new"
export EDITOR=/usr/bin/vi

## Android
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home/
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools/29.0.3

## NGROK

# export PATH=$PATH:$HOME/.ngrok

## ZSH Options

alias dircolors='gdircolors'

source $ZSH/oh-my-zsh.sh

# CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
# ENABLE_CORRECTION="true"
# HIST_STAMPS="yyyy/mm/dd"
HYPHEN_INSENSITIVE="true"

# Uncomment line below to turn on logging
# ANTIGEN_LOG=~/.antigen.log

source ~/antigen.zsh
antigen init ~/.antigenrc

RPROMPT='%{$fg_bold[green]%}[%*]% %{$reset_color%}'

# ALIASES

## CUSTOM
alias reset='git clean -dfx && npm install'

## docker
alias dce='docker-compose exec'
alias dcu='docker-compose up'
alias dcud='docker-compose up -d'
alias dcd='docker-compose down'
alias dcs='docker-compose stop'
alias dps='docker ps'
alias lzd='docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -v /Users/nateripoli/.lzd-config:/.config/jesseduffield/lazydocker lazyteam/lazydocker'

## git
alias amend='git commit -a --amend'
alias clean='git clean -dfx'
alias clearg="clear && git status"
alias continue="git rebase --continue"
alias gcam='git commit -am '
alias gcm='git commit -m '
alias gd='git diff'
alias gf='git fetch'
alias go='git checkout '
alias gpf='git push --force'
alias gpp='git fetch --prune && git pull'
alias gpu='git push -u origin '
alias gs='git status'
alias gss='git status -s'
alias history='git log --follow -p '
alias la='ls -la'
alias lg=!'git lg1'
alias lg1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias lg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias lg3="git log --graph --date-order --date=short --pretty=format:'%C(auto)%h%d %C(reset)%s %C(bold blue)%ce %C(reset)%C(green)%cr (%cd)'"
alias ls='ls -l'
alias master='git checkout master'
alias mybranches='git for-each-ref --sort=authorname --format="%(committerdate) %09 %(authorname) %09 %(refname)" refs/remotes | grep Ripoli'
alias prune='git fetch --prune'
alias rb='git branch -D '
alias rob='git push origin -d '
alias save='git add -A && git commit -m "SAVE POINT"'
alias searchContents='gsContents'
alias search='gsCommitMessages'
alias subup='git submodule update --init --recursive'
alias wip='git add -u && git commit -m "WIP"'

function squash {
	echo Rebasing $1 commits;
	git rebase -i HEAD~$1;
};

function gsContents {
        echo Searching commit contents for: $1;
        git grep $1 $(git rev-list --all);
};

function gsCommitMessages {
        echo Searching commit messages for: $1;
        git log --all --grep=$1;
};

##  open VS Code
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
};

DEFAULT_USER=__change_me__
FASTLANE_USER=__change_me__
REACT_EDITOR=code

bindkey "[D" backward-word
bindkey "[C" forward-word

# React
alias shake='adb shell input keyevent 82'
alias refresh='adb shell input keyevent 46 46'
