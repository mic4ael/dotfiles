#!/bin/sh

OS=$(uname)

print_title() {
    echo "\n"
    echo "=============== $1 ==============="
}

print_title "Creating .dotfiles folder"

install_tmux_conf() {
    ln -s "$(pwd)/tmux/tmux.conf" "$HOME/.tmux.conf"
}

install_vim_conf() {
    ln -s "$(pwd)/vim/vimrc" "$HOME/.vimrc"
}

install_git_conf() {
    ln -s "$(pwd)/git/gitconfig" "$HOME/.gitconfig"
    ln -s "$(pwd)/git/gitignore" "$HOME/.gitignore"
}

print_title "Installing TMUX"
install_tmux_conf

print_title "Installing VIM"
install_vim_conf

print_title "Installing GIT conf"
install_git_conf
