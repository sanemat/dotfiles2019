# _LOCAL_ZSHENV="$HOME/go/src/github.com/sanemat/dotfiles2019/zshenv"
# if [ -f "$_LOCAL_ZSHENV" ]; then
#   echo "load $_LOCAL_ZSHENV"
#   . $_LOCAL_ZSHENV
#fi

path=(
  $HOME/bin(N-/)
  $HOME/homebrew/bin(N-/)
  $HOME/anyenv/bin(N-/)
  $path
)

export ANYENV_ROOT="$HOME/anyenv"
