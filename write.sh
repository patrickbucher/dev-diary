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
    title="# $(date +'%A, %d %B %Y')"
    echo -e "${title}\n\n" > $file
fi

vim + $file
