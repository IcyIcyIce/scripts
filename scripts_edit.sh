#!/bin/bash

vim "$(find ${1} -type f |grep -v -e '.git' |fzf -i)"
