# vimrc-vundle-script
여러 리눅스 환경에서의 vimrc, vim plugin 파일 동기화를 위한 저장소

## Installation
<pre>
$ git clone https://github.com/uyu423/vimrc-vundle-script ~/.vim/yowus_vimrc
$ ln -s ~/.vim/yowus_vimrc/.vimrc ~/.vimrc 
</pre>

## Vundle Installation
<pre>
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
</pre>

## Install Plugins in .vimrc
<pre>
$ vim
: VundleInstall
</pre>

## ctags Installation for TagList Plugin
### Debian
<pre>
$ sudo apt-get install ctags
</pre>
### Redhat
<pre>
$ sudo yum install ctags
</pre>
