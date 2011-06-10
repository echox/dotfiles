alias ls='ls --color'

PROMPT=$'%{\e[0;32m%}%B[%b%{\e[0m%}%n%{\e[0;32m%}@%{\e[0m%}%m%{\e[0;32m%}%B:%b%{\e[0m%}%~%{\e[0;32m%}%B]%b%{\e[0m%} %(?..%{\e[0;33m%}%B!%b%{\e[0m%})%# '

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt share_history
setopt hist_ignore_dups

autoload -Uz compinit
compinit
setopt extended_glob
setopt autolist automenu
zstyle ':completion:*'               menu select=20
