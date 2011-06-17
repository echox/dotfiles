alias ls='ls --color'

PROMPT=$'%{\e[0;32m%}%B[%b%{\e[0m%}%n%{\e[0;32m%}@%{\e[0m%}%m%{\e[0;32m%}%B:%b%{\e[0m%}%~%{\e[0;32m%}%B]%b%{\e[0m%} %(?..%{\e[0;33m%}%B!%b%{\e[0m%})%# '

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt share_history
setopt hist_ignore_dups

autoload -Uz compinit
compinit

# some git aliases
alias g='git'
compdef g=git
alias gst='git status'
compdef _git gst=git-status
alias gl='git pull'
compdef _git gl=git-pull
alias gup='git fetch && git rebase'
compdef _git gup=git-fetch
alias gp='git push'
compdef _git gp=git-push
gdv() { git-diff -w "$@" | view - }
compdef _git gdv=git-diff
alias gc='git commit -v'
compdef _git gc=git-commit
alias gca='git commit -v -a'
compdef _git gca=git-commit
alias gco='git checkout'
compdef _git gco=git-checkout
alias gb='git branch'
compdef _git gb=git-branch
alias gba='git branch -a'
compdef _git gba=git-branch
alias gcount='git shortlog -sn'
compdef gcount=git
alias gcp='git cherry-pick'
compdef _git gcp=git-cherry-pick
alias glg='git log --stat --max-count=5'
compdef _git glg=git-log

setopt extended_glob
setopt autolist automenu
zstyle ':completion:*'               menu select=20

setopt correct

#ignore tariling `
setopt sunkeyboardhack
