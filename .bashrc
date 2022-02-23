#
# ~/.bashrc and ~/.zshrc 
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Shell Variables
export EDITOR=nvim
export PATH=$PATH:/home/$USER/Scripts
# Custom functions
compc() { gcc "$1" -o ${1%.c} -Wall -g -Wpedantic -Wextra; }
complus() { g++ "$1" -o ${1%.cpp} -Wall -g -Wpedantic -Wextra; }
dev(){ cd ~/Projects/;}
viewcsv(){ cat "$1" | column -t -s, | less -S; }
cleanlatex(){ rm -r *.log *.aux ; }
modulecrt(){ mkdir $1 && mkdir "$1/Notes" "$1/Assignments" "$1/Resources" "$1/Example_Sheets" }
chtsh(){ curl "cheat.sh/$1" | less -R }
# Simple Aliases 
alias nnn='nnn -dex'
alias ls='ls --color=auto'
alias trash='mv $* -t ~/Trash'
alias daisy="ssh u2004840@daisy.warwick.ac.uk"
alias vim="nvim"
alias miv="tmux new-session nvim"
alias virusscan="clamscan --recursive --infected --remove --max-filesize=1000M --max-scansize=1000M"
alias Duscord="setsid -f Discord && exit"
alias g="brave --incognito \"https://boards.4channel.org/g/catalog\" & "
alias cali="chromium \"https://calendar.google.com/calendar/u/0/r\" & "
#PS1='[\u@\h \W]\$ ' # Bash Prompt
PROMPT='%n@%M %# %~ ' 
