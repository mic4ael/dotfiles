#!/bin/sh

OS=$(uname)

print_title() {
    echo "=============== $1 ===============";
}

print_title "Initializing git submodules";
git submodule init;

print_title "Linking to ~/.dotfiles";
cp -r . $HOME/.dotfiles;

print_title "Linking ZSH configuration";
ln -s $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc;

print_title "Linking VIM configuration"
ln -s $HOME/.dotfiles/vim/vimrc $HOME/.vimrc;

print_title "Linking TMUX configuration";
ln -s $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf;

print_title "Linking GIT config";
ln -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig;
ln -s $HOME/.dotfiles/git/gitignore $HOME/.gitignore;
