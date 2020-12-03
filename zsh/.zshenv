export EDITOR=nvim
export BROWSER=firefox
export GOBIN=$HOME/.local/bin
export GTEST_COLOR=1

alias vim=nvim
alias gits='git status -s'
alias ezrc='vim ~/.zshrc'

function szrc() {
	source $HOME/.zshenv
	source $HOME/.zshrc
	[ -f $HOME/.zlogin ] && source $HOME/.zlogin
}

alias updatetl='tlmgr update --self --all --reinstall-forcibly-removed'

export PATH="$HOME/.local/bin:$PATH"

CONDA=$HOME/.local/anaconda/etc/profile.d/conda.sh
CONDA3=$HOME/.local/anaconda3/etc/profile.d/conda.sh
ROOT=$HOME/.local/root6/bin/thisroot.sh

for script in $CONDA $CONDA3 $ROOT; do
	if [ -f "$script" ]; then
		source "$script"
	fi
done


if type "envoy" > /dev/null; then
	source <(envoy -p)
fi

if type "pyenv" > /dev/null; then
	eval "$(pyenv init -)"
fi

export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/go/bin:$PATH"

export PATH="$HOME/.local/texlive/2020/bin/x86_64-linux:$PATH"
export MANPATH="$HOME/.local/texlive/2020/texmf-dist/doc/man:$MANPATH"
export INFOPATH="$HOME/.local/texlive/2020/texmf-dist/doc/man:$INFOPATH"

# added by travis gem
[ ! -s /home/maxnoe/.travis/travis.sh ] || source /home/maxnoe/.travis/travis.sh


export GAMMALIB=$HOME/.local/gammalib
export CTOOLS=$HOME/.local/ctools
[ ! -s $GAMMALIB/bin/gammalib-init.sh ] || source $GAMMALIB/bin/gammalib-init.sh
[ ! -s $CTOOLS/bin/ctools-init.sh ] || source $CTOOLS/bin/ctools-init.sh
