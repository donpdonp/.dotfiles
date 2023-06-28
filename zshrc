export PATH=$PATH:/opt/bin:~/go/bin:~/.local/bin
export HISTSIZE=5000

for cfgfile (~/.dotfiles/zsh/**/*(.) ~/.zsh/**/*(.)) source $cfgfile

zstyle ':vcs_info:*' enable git 
zstyle ':vcs_info:git:*' formats "[%s:%b] " # branch

prompt () {
  PS1="%F{25}%n%f@%m ${vcs_info_msg_0_}%F{46}%1~%f $ "
}

precmd_functions+=(prompt)


