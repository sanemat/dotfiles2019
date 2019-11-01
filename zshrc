# _LOCAL_ZSHRC="$HOME/go/src/github.com/sanemat/dotfiles2019/zshrc"
# if [ -f "$_LOCAL_ZSHRC" ]; then
#   echo "load $_LOCAL_ZSHRC"
#   . $_LOCAL_ZSHRC
# fi

# in ~/.zshenv, executed `unsetopt GLOBAL_RCS` and ignored /etc/zshrc
[ -r /etc/zshrc ] && . /etc/zshrc

# anyenv
eval "$(anyenv init -)"
