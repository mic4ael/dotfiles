#!/bin/bash

prepare() {
  sudo dnf -y update
  sudo dnf install -y python-devel git zsh golang fzf

  curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
  curl https://bootstrap.pypa.io/get-pip.py | python3

  python3 -m pip install --user pipx
}

finish() {
  sudo dnf install -y fd-find bat ripgrep
}
