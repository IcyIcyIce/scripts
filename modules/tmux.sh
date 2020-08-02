#!/bin/bash

alias tmux="tmux -f ${SCRIPTS_DIR}/dotfiles/.tmux.conf"

if [ -z "$TMUX" ]; then
  tmux has-session -t ${USER}
  [ $? -eq 0 ] && tmux attach-session -t "${USER}" || tmux new-session -s "${USER}"
fi
