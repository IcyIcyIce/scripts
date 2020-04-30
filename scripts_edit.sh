#!/bin/bash

file="$(find ${1} -type f |grep -v -e '.git' |fzf -i)"
[ ! -z $file ] && vim $file
