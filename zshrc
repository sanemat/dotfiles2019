# _LOCAL_ZSHRC="$HOME/go/src/github.com/sanemat/dotfiles2019/zshrc"
# if [ -f "$_LOCAL_ZSHRC" ]; then
#   echo "load $_LOCAL_ZSHRC"
#   . $_LOCAL_ZSHRC
# fi

# in ~/.zshenv, executed `unsetopt GLOBAL_RCS` and ignored /etc/zshrc
[ -r /etc/zshrc ] && . /etc/zshrc

# anyenv
eval "$(anyenv init -)"

# github
alias gl='cd $(ghq root)/$(ghq list | peco)'
alias gr='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

# git
if [ -r "$HOME/go/src/github.com/git/git/contrib/completion/git-completion.zsh" ]; then
  zstyle ':completion:*:*:git:*' script $HOME/go/src/github.com/git/git/contrib/completion/git-completion.zsh
fi

autoload -U compinit && compinit
