#!/bin/sh

rm -rf ~/.vimrc ~/.vimrc.bundles ~/.vim

if [ -f "~/back/.vim" ];then
    mv -f ~/back/.vim ~/.vim
fi
if [ -f "~/back/.vimrc" ];then
    mv -f ~/back/.vimrc ~/.vimrc
fi
if [ -f "~/back/.vimrc.bundles" ];then
    mv -f ~/back/.vimrc.bundles ~/.vimrc.bundles
fi

rm -rf ~/.back