#!/usr/bin/env bash

git clone https://gitee.com/whatdy/vim_plugin.git
# rm -rf .vim/bundle/*/.git
mkdir vim_plugin/back

# 备份原有 vim 数据
mv .vim* vim_plugin/back
cp vim_plugin/.vimrc $HOME/.vimrc
cp vim_plugin/.vimrc.bundles $HOME/.vimrc.bundles
cp -rf vim_plugin/.vim $HOME/.vim

