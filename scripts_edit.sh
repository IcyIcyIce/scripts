#!/bin/bash

vim "$(find ${SCRIPTS_DIR} -type f |fzf -i)"
