# _LOCAL_ZSHENV="$HOME/go/src/github.com/sanemat/dotfiles2019/zshenv"
# if [ -f "$_LOCAL_ZSHENV" ]; then
#   echo "load $_LOCAL_ZSHENV"
#   . $_LOCAL_ZSHENV
#fi

path=(
  $HOME/bin
  $HOME/homebrew/bin(N-/)
  $path
)
