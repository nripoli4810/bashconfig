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
