#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
compc() { gcc "$1" -o ${1%.c} -Wall -g -Wpedantic -Wextra; }
complus() { g++ "$1" -o ${1%.cpp} -Wall -g -Wpedantic -Wextra; }
dev(){ cd ~/Projects/;}
viewcsv(){ cat "$1" | column -t -s, | less -S; }
cleanlatex(){ rm -r *.log *.aux ; }
alias ls='ls --color=auto'
alias trash='mv $* -t ~/Trash'
PS1='[\u@\h \W]\$ '
