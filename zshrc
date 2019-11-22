# _LOCAL_ZSHRC="$HOME/go/src/github.com/sanemat/dotfiles2019/zshrc"
# if [ -f "$_LOCAL_ZSHRC" ]; then
#   echo "load $_LOCAL_ZSHRC"
#   . $_LOCAL_ZSHRC
# fi

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# in ~/.zshenv, executed `unsetopt GLOBAL_RCS` and ignored /etc/zshrc
[ -r /etc/zshrc ] && . /etc/zshrc
[ -r /etc/zsh/zshrc ] && . /etc/zsh/zshrc
