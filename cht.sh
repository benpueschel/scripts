#!/usr/bin/env bash

languages=`echo "golang lua cpp c rust kotlin" | tr ' ' '\n'`

selected=`printf "$languages\n" | fzf`
read -p "query: " query

tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
