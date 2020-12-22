# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#export GTEST_ROOT=/usr
export GTEST_ROOT=${HOME}/Projects/googletest/release/
export PS1="\u@\h <-\[\033[0;36m\]\w\[\033[0;37m\]-> "

alias vi='vim'
alias ll='ls -lart'
alias l.='ls -d .[a-zA-Z]* '
alias psg='ps aux | grep -v grep | grep '
alias j='jobs'
alias h='history'

