#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\w]\$ '
PATH=$PATH:~/.local/bin
EDITOR=vim

alias ls='ls --color=auto'
alias ..='cd ..'
alias nf='neofetch --ascii ~/arch_ascii'
alias i3conf='vim ~/.config/i3/config'
alias polyconf='vim ~/.config/polybar/config'
alias pydir='cd ~/dheeraj/python/'
alias cppdir='cd ~/dheeraj/cpp/'
alias testdir='cd ~/dheeraj/test/'
alias zathura='swallow zathura'
alias evince='swallow evince'
alias mpv='swallow mpv'
alias vlc='swallow vlc'
alias pcmanfm='swallow pcmanfm'

cat ~/.cache/wal/sequences
