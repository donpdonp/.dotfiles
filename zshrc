
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

PS1="%F{25}%n%f@%m %F{46}%1~%f $ "
export PATH=$PATH:/opt/bin/:~/go/bin:~/.local/bin
export HISTSIZE=5000

for cfgfile (~/.zsh/**/*(.)) source $cfgfile

