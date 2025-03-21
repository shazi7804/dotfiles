#!/bin/sh

BASEDIR=`dirname $0`

#
umask 077

# submodule init
git submodule update --init

#
cp ${BASEDIR}/.profile ~/
cp ${BASEDIR}/.zshrc ~/
cp ${BASEDIR}/.zshrc.local ~/
cp ${BASEDIR}/.gitconfig ~/
cp ${BASEDIR}/.gitconfig.local ~/
cp ${BASEDIR}/.wgetrc ~/
cp ${BASEDIR}/.sqliterc ~/
cp ${BASEDIR}/.psqlrc ~/

# vim
mkdir -p ~/.vim/
rsync -a ${BASEDIR}/.vim/ ~/.vim/
chmod 700 ~/.vim/
cp ${BASEDIR}/.vimrc ~/
vim +BundleClean\! +BundleInstall +q +q
