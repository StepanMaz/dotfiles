# common aliases
alias ll="ls -l"
alias la="ls -a"
alias ..="cd .."
alias ~="cd ~"
alias ...="cd ../.."

# git aliases
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gp='git push'
alias gpf='git push --force'
alias gl='git log'
alias gls='git log --stat'
alias gm='git merge'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'
alias gba='git branch -a'
alias gcl='git clone'
alias gpl='git pull'
alias gr='git remote -v'
alias grm='git rm'
alias gstash='git stash'
alias gpop='git stash pop'
alias gch='git cherry-pick'
alias grh='git reset --hard'
alias grs='git reset --soft'
alias gd='git diff'
alias gdc='git diff --cached'

alias python="python3"

alias vim="nvim"
alias vi="nvim"

function mkd {
    mkdir -p -- "$1" && cd -P -- "$1"
}
