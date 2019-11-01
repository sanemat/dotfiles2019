# _LOCAL_ZSHENV="$HOME/go/src/github.com/sanemat/dotfiles2019/zshenv"
# if [ -f "$_LOCAL_ZSHENV" ]; then
#   echo "load $_LOCAL_ZSHENV"
#   . $_LOCAL_ZSHENV
#fi

export PATH
export MANPATH
# -U: keep only the first occurrence of each duplicated value
# ref. http://zsh.sourceforge.net/Doc/Release/Shell-Builtin-Commands.html#index-typeset
typeset -U PATH path MANPATH manpath

# ignore /etc/zprofile, /etc/zshrc, /etc/zlogin, and /etc/zlogout
# ref. http://zsh.sourceforge.net/Doc/Release/Files.html
# ref. http://zsh.sourceforge.net/Doc/Release/Options.html#index-GLOBALRCS
unsetopt GLOBAL_RCS
# copied from /etc/zprofile
# system-wide environment settings for zsh(1)
if [ -x /usr/libexec/path_helper ]; then
    eval `/usr/libexec/path_helper -s`
fi

path=(
  ${HOME}/bin(N-/)
  ${HOME}/homebrew/bin(N-/)
  ${HOME}/homebrew/sbin(N-/)
  ${HOME}/anyenv/bin(N-/)
  ${path}
)

manpath=(
  ${HOME}/share/man(N-/)
  ${manpath}
)

export ANYENV_ROOT="$HOME/anyenv"
