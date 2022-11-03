#!/bin/sh

dotfiles_root=$(cd $(dirname $0)/.. && pwd)

#dotfileディレクトリの中身のリンクをホームディレクトリ直下に作成
cd ${dotfiles_root}/home
for file in .*; do
	ln -s ${PWD}/${file} ${HOME}
done