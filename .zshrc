# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt beep nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ari/.zshrc'

autoload -Uz compinit
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats ' %b '

setopt PROMPT_SUBST
compinit
# End of lines added by compinstall
PROMPT='%~$ ${vcs_info_msg_0_}'
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
