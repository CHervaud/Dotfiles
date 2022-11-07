#! /bin/bash

srcPath="$HOME/.config/nvim"
destPath="./data/nvim"

cp $srcPath/coc-settings.json $destPath
cp $srcPath/init.vim $destPath
cp -r $srcPath/keybindings/ $destPath
cp -r $srcPath/plugs-set/ $destPath

srcPath="$HOME/.config/coc"
destPath="./data/coc"

cp -r $srcPath/ultisnips/ $destPath
