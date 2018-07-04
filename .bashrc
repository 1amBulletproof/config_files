# ~/.bash_profile

# The orginal version is saved in .bash_profile.pysave
export BREW_PATH='/usr/local/bin'
PATH="~/bin:$BREW_PATH:$PATH"
export PATH

#Configure system for coursera
export WEB_URL='http://www.coursera.com'
export dformat='\nID\t{{.ID}}\nIMAGE\t{{.Image}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.RunningFor}}\nStatus\t{{.Status}}\nPORTS\t{{.Ports}}\nNAMES\t{{.Names}}\n'

MYNAME='Brandon Tarney'
export MYNAME

export HISTSIZE=1000000                               #500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p '               # using strftime format
export HISTCONTROL=ignoreboth                         # ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll:la:lt"

#GREP_COLOR codes
#Attributes:   Text Color:   Background:
#    0 reset all      30 black      40 black
#    1 bright         31 red        41 red
#    2 dim            32 green      42 green
# ETC....
#Separate with ";"

export GREP_COLOR="34;47"
export GREP_OPTIONS="--color=auto"

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

  export PS1="\n----------------------------------------------------------------------\n[ \[\e[0;32m\]\w \[\e[0m\]]\n[ \u@\h ] \t \$  "

}

prompt

#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

#Setup docker environment
eval $(docker-machine env default)


source ~/.alias
