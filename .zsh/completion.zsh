autoload -U compinit
compinit -C

zstyle ':completion:*' menu yes select

if [ -e $HOME/.ssh/known_hosts ] ; then
    hosts=(${${${(f)"$(<$HOME/.ssh/known_hosts)"}%%\ *}%%,*})
    zstyle ':completion:*:hosts' hosts $hosts
fi
