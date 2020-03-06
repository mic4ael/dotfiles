#!/bin/bash

prepare() {
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install pipx pyenv zsh
}

finish() {
  brew install adwaita-icon-theme asciidoctor automake bat boost cloc cloog cmake \
  cocoapods ctags curl dep exercism fd fzf git htop httpie kubernetes-cli macvim \
  nasm ncdu netcat nmap node pidof pipx pstree pv pyenv reattach-to-user-namespace \
  ripgrep socat speedtest-cli ssh-copy-id tcpkali tig tldr tmux tree weechat wget zsh

  brew cask install android-file-transfer android-platform-tools android-sdk anki \
  cinch garmin-express gimp iterm2 java keepassx middleclick osxfuse paintbrush qnapi \
  signal spotify the-unarchiver transmission visual-studio-code vlc wireshark xquartz
  
  brew linkapps
  brew cleanup
  brew cask cleanup
}
