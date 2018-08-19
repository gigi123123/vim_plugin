#!/bin/sh
rm -rf ~/.vimrc ~/.vimrc.bundles ~/.vim


mv -f ~/.back/.vimrc_old ~/.vimrc
mv -f ~/.back/.vimrc.bundles_old ~/.vimrc.bundles
mv -f ~/.back/.vim_old ~/.vim
