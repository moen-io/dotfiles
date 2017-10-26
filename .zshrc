#!/bin/bash

# Source various utils
source ~/.path
source ~/.aliases
source ~/.functions
source ~/.antigen/antigen.zsh

# Use oh-my-zsh library
antigen use oh-my-zsh

# Themes and plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# Apply antigen settings
antigen apply

# Extra fuzzy tab completion
# 0 -- vanilla completion (abc => abc)
# 1 -- smart case completion (abc => Abc)
# 2 -- word flex completion (abc => A-big-Car)
# 3 -- full flex completion (abc => ABraCadabra)
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:[[:ascii:]]||[[:ascii:]]=** r:|=* m:{a-z\-}={A-Z\_}'

export NVM_DIR="/home/thomas/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
