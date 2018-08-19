#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
if which apt-get >/dev/null; then
	sudo apt-get install -y vim vim-gnome ctags xclip astyle python-setuptools python-dev git
elif which yum >/dev/null; then
	sudo yum install -y gcc vim git ctags xclip astyle python-setuptools python-devel	
fi

##Add HomeBrew support on  Mac OS
if which brew >/dev/null;then
    echo "You are using HomeBrew tool"
    brew install vim ctags git astyle
fi

sudo easy_install -ZU autopep8 
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
echo "数据备份中..."



# 文件备份
mkdir ~/.back
if [ -f "~/.vim" ];then
    mv -f ~/.vim ~/.back/.vim
fi
if [ -f "~/.vimrc" ];then
    mv -f ~/.vimrc ~/.back/.vimrc
fi
if [ -f "~/.vimrc.bundles" ];then
    mv -f ~/.vimrc.bundles ~/.back/.vimrc.bundles
fi

if [ ! -d "$HOME/vim_plugin" ];then
    cd ~/ && git clone https://gitee.com/whatdy/vim_plugin.git
    cp -r ~/vim_plugin/vim ~/.vim
    cp ~/.vim/.vimrc ~/.vimrc
    cp ~/.vim/.vimrc.bundles ~/.vimrc.bundles
    echo "安装完成"
else
    echo '文件已经存在'
fi




