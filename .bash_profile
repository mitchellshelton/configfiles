# source ~/.profile
# ~/.bash_profile

# Use MAMP version of PHP
export PATH=/Applications/MAMP/bin/php/5.6.10/bin:$PATH
export PATH=~/.composer/vendor/bin:$PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/.composer/vendor/bin

# Export MAMP MySQL executables as functions
# Makes them usable from within shell scripts (unlike an alias)
mysql() {
    /Applications/MAMP/Library/bin/mysql "$@"
}
mysqladmin() {
    /Applications/MAMP/Library/bin/mysqladmin "$@"
}
export -f mysql
export -f mysqladmin

alias drupalcs="phpcs --standard=Drupal --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"

alias drupalbestcs="phpcs --standard=DrupalPractice --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"

alias drupalfixcs="phpcbf --standard=Drupal --extensions='php,module,inc,install,test,profile,theme,css,info,txt,md'"

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

[[ -s ~/.bashrc ]] && source ~/.bashrc

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="\n$GREEN\u$GREEN:$GREEN\w$WHITEBOLD > $RESETCOLOR"
  export PS2=" | → $RESETCOLOR"
}

prompt

export PATH="/usr/local/sbin:$PATH"
