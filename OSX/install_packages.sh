#!/bin/bash

brew install ack;
brew install ansible;
brew install asciinema;
brew install autoconf;
brew install brew-cask;
brew install cmake;
brew install ctags;
brew install docker-machine;
brew install docker;
brew install gettext;
brew install git hub tig;
brew install htop;
brew install httpie;
brew install kotlin;
brew install macvim --custom-icons --override-system-vim --with-lua --with-luajit;
brew install mc;
brew install mercurial;
brew install midnight-commander;
brew install openssl;
brew install openvpn;
brew install pyenv-virtualenvwrapper;
brew install pyenv;
brew install python;
brew install python3;
brew install ruby;
brew install scala;
brew install sdl2;
brew install sqlite;
brew install the_silver_searcher;
brew install tmux reattach-to-user-namespace;
brew install tree;
brew install weechat --with-lua --with-perl --with-python --with-ruby;
brew install wget;
brew install znc;
brew install zsh;

# Brew Cask
brew cask install atom;
brew cask install cinch;
brew cask install flux;
brew cask install goofy;
brew cask install google-chrome;
brew cask install iterm2;
brew cask install java;
brew cask install libreoffice;
brew cask install middleclick;
brew cask install slack;
brew cask install spotify;
brew cask install steam;
brew cask install telegram;
brew cask install virtualbox;
brew cask install vlc;
brew cask install wireshark;

brew linkapps;

brew cleanup;brew cask cleanup;
