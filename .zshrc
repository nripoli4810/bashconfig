# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias amend='git commit -a --amend'
alias clearg="clear && git status"
alias drb="git push origin :"
alias gcam='git commit -am '
alias gcm='git commit -m '
alias gd='git diff'
alias gf='git fetch'
alias go='git checkout '
alias gp='git push'
alias gpf='git push --force'
alias gpu='git push -u origin '
alias gs='git status'
alias gss='git status -s'
alias history='git log --follow -p '
alias la='ls -la'
alias lg=!'git lg1'
alias lg1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias lg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias ls='ls -l'
alias prune='git fetch --prune'
alias save='git add -A && git commit -m "SAVE POINT"'
alias searchContents='searchCommitContents'
alias search='searchCommitMessages'
alias squash2='git rebase -i HEAD~2'
alias squashx='gitrebaseX'
alias subup='git submodule update --init --recursive'
alias wip='git add -u && git commit -m "WIP"'

gitRebaseX() {
	echo Rebasing $1 commits;
	git rebase -i HEAD~$1;
};

searchCommitContents() {
        echo Searching commit contents for: $1;
        git grep $1 $(git rev-list --all);
};

searchCommitMessages() {
        echo Searching commit messages for: $1;
        git log --all --grep=$1;
};

DEFAULT_USER="nripoli"

bindkey "[D" backward-word
bindkey "[C" forward-word
