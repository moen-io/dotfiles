#!/bin/bash

# Source various utils
source ~/.path
source ~/.aliases
source ~/.functions
source ~/.antigen/antigen.zsh

# Use oh-my-zsh library
antigen use oh-my-zsh

# Antigen plugins
antigen bundle git

# Antigen theme
antigen theme amuse

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

