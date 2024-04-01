# .bashrc

# If not running interactively, do not do anything
[[ $- != *i* ]] && return

GREEN="\[\033[01;32m\]"
WHITE="\[\033[0m\]"

set -o vi
use_color=true
PS1="${GREEN}[\u@\h \W]${WHITE}\$ "

export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export MANPAGER="less"
export READER="zathura"
export TERM="xterm-256color"
export XDG_CONFIG_HOME="${HOME}/.config"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin:${HOME}/.local/bin/"

shopt -s checkwinsize					# refresh window size
shopt -s expand_aliases
shopt -s cdspell						# correct file paths
shopt -s cmdhist						# multi line commands in one
shopt -s extglob						# extended patterns
shopt -s no_empty_cmd_completion
shopt -s histappend						# will not overwrite
shopt -s autocd							# cd with dir name

alias x="sudo xbps-install"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias svim="nvim"
alias ls="exa --group-directories-first"
alias ll="exa -l --group-directories-first"
alias la="exa -lA --group-directories-first"
alias cat="bat"
alias c="clear"
alias e="exit"
alias ..="cd .."
alias ...="cd ../.."
alias fidget="nvim ~/.bashrc"
alias df="df -h"						# human readable size
alias free="free -m"					# size in MB
alias cp="cp -vi"
alias mv="mv -vi"
alias weather="curl wttr.in"
alias birb="curl parrot.live"
alias config="git --git-dir=${HOME}/documents/dotfiles --work-tree=${HOME}"
alias new="feh --bg-fill -r -z ${HOME}/pictures/wallpapers/"

# soft deletes files and folders
function rm() {
	mv -v "$1" ${HOME}/.trash
}

# lists files after cd
function cd() {
	builtin cd "$@" && exa
}

export HISTSIZE=5000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE="&:ls:ll:la:cd:exit:clear:history"

# blackmagic?? idk what these do but they seem important
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
xhost +local:root > /dev/null 2>&1
