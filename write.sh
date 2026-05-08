#!/usr/bin/env bash

year=$(date +'%Y')
month=$(date +'%m')
day=$(date +'%d')
dir="${year}/${month}"
file="${dir}/${day}.md"

if [ ! -d $dir ]
then
    mkdir -p $dir
fi

if [ ! -e $file ]
then
    touch $file
fi

vim + $file
