# _LOCAL_ZSHRC="$HOME/go/src/github.com/sanemat/dotfiles2019/zshrc"
# if [ -f "$_LOCAL_ZSHRC" ]; then
#   echo "load $_LOCAL_ZSHRC"
#   . $_LOCAL_ZSHRC
# fi

# in ~/.zshenv, executed `unsetopt GLOBAL_RCS` and ignored /etc/zshrc
[ -r /etc/zshrc ] && . /etc/zshrc
[ -r /etc/zsh/zshrc ] && . /etc/zsh/zshrc

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export PATH
export MANPATH
# -U: keep only the first occurrence of each duplicated value
# ref. http://zsh.sourceforge.net/Doc/Release/Shell-Builtin-Commands.html#index-typeset
typeset -U PATH path MANPATH manpath

export GOPATH="$HOME/go"

path=(
  ${HOME}/bin(N-/)
  ${HOME}/.ghg/bin(N-/)
  ${HOME}/anyenv/bin(N-/)
  ${GOPATH}/bin(N-/)
  ${HOME}/homebrew/bin(N-/)
  ${HOME}/homebrew/sbin(N-/)
  ${path}
)

manpath=(
  ${HOME}/homebrew/share/man(N-/)
  ${manpath}
)

export ANYENV_ROOT="$HOME/anyenv"

# goenv
# https://github.com/syndbg/goenv/blob/de335670b7b93c1b3a6eea71925d6aeffe0d66e5/CHANGELOG.md#200beta6
# https://qiita.com/gimKondo/items/add08298e24ae400505e
export GOENV_DISABLE_GOPATH=1

# anyenv
eval "$(anyenv init -)"

# github
alias gl='cd $(ghq root)/$(ghq list | peco)'
alias gr='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
