source /etc/bash_completion

PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W\[\033[01;37m\]$(__git_ps1 "(%s)")\[\033[01;34m\] \$\[\033[00m\] '

alias ll='ls -ahlF'
