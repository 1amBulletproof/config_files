# ~/.bash_profile

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
export PYTHON_3_PATH='/Library/Frameworks/Python.framework/Versions/3.4/bin'
export GIT_HOME='/usr/local/Cellar/git/2.13/bin'
export GVIM_PATH='/usr/local/Cellar/macvim/8.0-134/bin'
export BREW_PATH='/usr/local/Cellar/'
PATH="~/scripts:$PYTHON_3_PATH:$GIT_HOME:$GVIM_PATH:$BREW_PATH:$PATH"
export PATH

#Configure system for coursera
export WEB_URL='http://www.coursera.com'

MYNAME='Brandon Tarney'
export MYNAME

export HISTSIZE=1000000                               #500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p '               # using strftime format
export HISTCONTROL=ignoreboth                         # ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll:la:lt"

alias ll="ls -l"
alias la="ls -a"
alias lt="ls -ltr"
alias lart="ls -lart"
alias hello='echo "Hello World!"'
alias home='cd ~'
alias up='cd ..'
alias h='history'
alias workDir="cd /Users/Tarney/Library/Mobile\ Documents/com~apple~CloudDocs/Creative\ Projects/Working"
alias learnDir="cd /Users/Tarney/Library/Mobile\ Documents/com~apple~CloudDocs/Creative\ Projects/Learn"
alias schoolDir="cd /Users/Tarney/Library/Mobile\ Documents/com~apple~CloudDocs/School/JohnsHopkins"
alias iCloudDir="cd /Users/Tarney/Library/Mobile\ Documents/com~apple~CloudDocs"
alias python3="/usr/local/Cellar/python3/3.6.2/bin/python3"
alias sshDroplet="ssh -X root@104.236.202.26"
alias sftpDroplet="sftp root@104.236.202.26"
alias sshVM="ssh -p 2222 root@127.0.0.1"
alias scpVM="scp -P 2222"
alias sshAbsaroka="ssh -X btarney1@absaroka.jhuep.com"
alias sshDev4="ssh -X btarney1@dev4.jhuep.com"
alias sshWeb6="ssh -X btarney1@web6.jhuep.com"

#redefine/override built-in commands with options predefined
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -p'
alias v='vim'
alias g='gvim'

#proactive typo correction
alias pdw='pwd'

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
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
