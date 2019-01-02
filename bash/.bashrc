#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vim='nvim'
alias ..='cd ..'
alias ls='ls --color=auto'
alias ll='ls -lh'
alias lla=' ls -lha'
alias dir="dir --color=auto"
alias grep="grep --color=auto"
alias dmesg='dmesg --color'
alias gits='git status -s'
alias ebrc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc'
alias updatetl='tlmgr update --self --all --reinstall-forcibly-removed'
alias sa='source activate'
alias godark="source $HOME/.config/base16-shell/scripts/base16-default-dark.sh"
alias golight="source $HOME/.config/base16-shell/scripts/base16-default-light.sh"
godark

export EDITOR=nvim
export BROWSER=firefox

eval `dircolors ~/.dircolors`

complete -cf sudo
complete -cf man

source $HOME/.bash_prompt
source $HOME/.bash_functions


if [ -f ~/.git-completion.bash ]; then
	  . ~/.git-completion.bash
fi



[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

if [ -f ~/.local/root6/bin/thisroot.sh ]; then
	source ~/.local/root6/bin/thisroot.sh
fi

export GAMMALIB=$HOME/.local/gammalib
if [ -f $GAMMALIB/bin/gammalib-init.sh ]; then
	source $GAMMALIB/bin/gammalib-init.sh
fi

export CTOOLS=$HOME/.local/ctools
if [ -f $CTOOLS/bin/ctools-init.sh ]; then
	source $CTOOLS/bin/ctools-init.sh
fi

if [ -f $HOME/.local/anaconda3/etc/profile.d/conda.sh ]; then
	. $HOME/.local/anaconda3/etc/profile.d/conda.sh
	conda activate
fi
