#!/bin/bash

set -e

OS=$(uname -s)
PWD=$(pwd)

if [[ $OS == 'Linux' ]]; then
  source linux.sh
elif [[ $OS == 'Darwin' ]]; then
  source osx.sh
fi

echo "[1 / 10] Preparing the environment"

prepare

echo "[2 / 10] Installing antigen"

git clone https://github.com/zsh-users/antigen.git ~/.antigen

echo "[3 / 10] Linking ZSH configuration"

ln -s $PWD/zsh/zshrc $HOME/.zshrc

echo "[4 / 10] Linking VIM configuration"

ln -s $PWD/vim/vimrc $HOME/.vimrc

echo "[5 / 10] Linking TMUX configuration"

ln -s $PWD/tmux/tmux.conf $HOME/.tmux.conf

echo "[6 / 10] Linking GIT configuration"

ln -s $PWD/git/gitconfig $HOME/.gitconfig
ln -s $PWD/git/gitignore $HOME/.gitignore

echo "[7 / 10] Linking CTAGS configuration"

ln -s $PWD/ctags/ctags $HOME/.ctags

echo "[8 / 10] Create missing directories (~/go, ~/bin)"

mkdir ~/{go,bin}
cp $PWD/scripts/* ~/bin

echo "[9 / 10] Installing python utilities"

zsh -ic "pipx install pew && pipx install poetry && pipx install ipython && pipx install flake8"

echo "[10 / 10] Installing system packages"

finish

echo "DONE!"
