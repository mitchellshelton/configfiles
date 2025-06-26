#!/bin/bash

# Set aliases for other text editors
alias vim='nvim'
alias vi='nvim'
alias nano='nvim'

# Special for nvim
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


clear && fastfetch
user=`whoami`
date=$(date "+%A %B %e, %Y %I:%M %p")
printf "Logged in as: ${user}\n"
printf "${date}"
echo '\n'

# Enable Terminal Color Modes (this doesn't seem to do anything)
export TERM="xterm-256color"
export COLORTERM=truecolor

# Color Palette
DIR_BG_COLOR="#1a1b26"
TEXT_COLOR="#1a1b26"
DIR_TEXT_COLOR="#efefef"
TIME_TEXT_COLOR="#a0a9cb"

# Prompt Colors
PROMPT_ARROW_COLOR="#9ece6a" # Green arrow prompt
PROMPT_ARROW_TEXT_COLOR="#ffffff" # Arrow prompt foreground

# Special shades for handling mismatched colors (see color modes?)
TIME_BG_FOR_TEXT="#293556"
TIME_BG_FOR_ICON="#324067"
USER_BG_FOR_TEXT="#2B99EE"
USER_BG_FOR_ICON="#1D7CC9"

# USER BLOCK
USER_LEFT_ICON="%F{${USER_BG_FOR_ICON}}"
USER_TEXT="%K{${USER_BG_FOR_TEXT}}%F{${TEXT_COLOR}} %B%n %b"
USER_RIGHT_ICON="%K{${DIR_BG_COLOR}}%F{${USER_BG_FOR_ICON}}%f%k"
PROMPT_USER="${USER_LEFT_ICON}${USER_TEXT}${USER_RIGHT_ICON}"

# DIRECTORY BLOCK
DIR_TEXT="%K{${DIR_BG_COLOR}}%F{${DIR_TEXT_COLOR}} %1~ "
DIR_RIGHT_ICON="%K{${TIME_BG_FOR_ICON}}%F{${DIR_BG_COLOR}}%f%k"
PROMPT_DIR="${DIR_TEXT}${DIR_RIGHT_ICON}"

# TIME BLOCK
TIME_FORMAT="%D{%I:%M %p}"
TIME_TEXT="%K{${TIME_BG_FOR_ICON}}%F{${TIME_TEXT_COLOR}} ${TIME_FORMAT} "
TIME_RIGHT_ICON="%f%k%F{${TIME_BG_FOR_TEXT}}%f%k"
PROMPT_TIME="${TIME_TEXT}${TIME_RIGHT_ICON}"

# Final Prompt Line
PROMPT_END=$'\n'"%F{${PROMPT_ARROW_COLOR}}> %F{${PROMPT_ARROW_TEXT_COLOR}}"

# Combine
PROMPT="${PROMPT_USER}${PROMPT_DIR}${PROMPT_TIME}${PROMPT_END}"

# File/Folder colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
