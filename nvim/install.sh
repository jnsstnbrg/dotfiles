#!/bin/bash

pip3 install neovim

mkdir -p ~/.config/nvim/

cat > ~/.config/nvim/init.vim << EOF
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
EOF

nvim +PlugInstall +qall
nvim +GoInstallBinaries +qall
