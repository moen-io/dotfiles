#!/bin/bash

# Source various utils
source ~/.path
source ~/.aliases
source /usr/local/share/antigen.zsh

# Use oh-my-zsh library
antigen use oh-my-zsh

# Antigen plugins
antigen bundle git

# Antigen theme
antigen theme amuse

# Apply antigen settings
antigen apply
