#!/bin/bash

# Check if there are any existing tmux sessions
if [[ $(tmux list-sessions 2>/dev/null | wc -l) -gt 0 ]]; then
  # If sessions are available, attach
  tmux attach
else
  # If no sessions are available, start a new tmux session
  tmux
fi
