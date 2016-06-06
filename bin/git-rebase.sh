#!/bin/bash

bin_dir=`dirname $0`
cd $bin_dir
bin_dir=`pwd`

source $bin_dir/param

cd $DEV_HOME/$1

echo "=====================$1 `pwd`=========================="
git fetch
git rebase origin/master
