#!/bin/bash

vimdir=$HOME/.vim
vimrc=$HOME/.vimrc

if [ ! -d $vimdir ]
then
  if [ -d $HOME/vimrc ]
  then
    mv $HOME/vimrc $vimdir
  fi
  git clone https://github.com/hexb-it/vimrc.git $vimdir
fi

if [ -f $HOME/.vimrc ];
then
  mv $HOME/.vimrc $HOME/.vimrc.old
fi

cp $vimdir/vimrc .vimrc

echo 'Done!'