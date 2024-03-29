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
  ${HOME}/.cargo/bin(N-/)
  ${HOME}/Android/Sdk/tools(N-/)
  ${HOME}/Android/Sdk/tools/bin(N-/)
  ${HOME}/Android/Sdk/platform-tools(N-/)
  ${GOPATH}/src/chromium.googlesource.com/chromium/tools/depot_tools(N-/)
  ${HOME}/homebrew/bin(N-/)
  ${HOME}/homebrew/sbin(N-/)
  /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin(N-/)
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

# git
if [ -r "$HOME/go/src/github.com/git/git/contrib/completion/git-completion.zsh" ]; then
  zstyle ':completion:*:*:git:*' script $HOME/go/src/github.com/git/git/contrib/completion/git-completion.zsh
fi

autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# direnv
eval "$(direnv hook zsh)"

# haskell
export STACK_ROOT="$HOME/stack"
eval "$(stack --bash-completion-script stack)"

# Save command history
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history no_inc_append_history no_share_history

# prompt
PS1="${debian_chroot:+($debian_chroot)}\$ "

# d8
alias d8="$HOME/js/v8/out.gn/x64.optdebug/d8"
alias tick-processor="$HOME/js/v8/tools/linux-tick-processor"
export D8_PATH="$HOME/js/v8/out.gn/x64.optdebug"
