#!/bin/bash

findPath="${1:-$(pwd)}"
file="$(find ${findPath} -type f 2>/dev/null |grep -v -e '.git' |fzf -i)"
[ ! -z $file ] && vim $file
