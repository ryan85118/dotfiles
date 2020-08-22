#
# Exports
#

# History file configuration
typeset -g SAVEHIST=500 HISTFILE=~/.zsh_history

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin:/usr/local/bin
#export ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
export LANG="en_US.UTF-8"

#
# Enable Powerlevel10k instant prompt
#

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
# Aliases
#

alias l='ls -CF'	l.='ls -d .*'	la='ls -A'	ll='ls -alF'
alias df='df -h'	du='du -h'	cp='cp -v'	mv='mv -v'

# Git
alias git=hub
alias glog_branches="git log --color=always --oneline --decorate --graph --branches"

#
# Zinit (plugin manager)
#

# Zinit
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Zinit annexes
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

#
# Load plugins
#

# Fast-syntax-highlighting & autosuggestions
#zinit light zsh-users/zsh-autosuggestions
#zinit light zdharma/fast-syntax-highlighting
zinit wait lucid for \
	atinit"ZINIT[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" \
		zdharma/fast-syntax-highlighting \
	atload"!_zsh_autosuggest_start" \
		zsh-users/zsh-autosuggestions \
	blockf \
		zsh-users/zsh-completions

#zinit snippet OMZ::lib/git.zsh
#zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit wait lucid for \
	zdharma/zsh-unique-id \
	OMZ::lib/git.zsh \
	atload"unalias grv g" \
	OMZ::plugins/git/git.plugin.zsh

# Install Powerlevel10k
zinit ice depth=1
zinit light romkatv/powerlevel10k

# Import plugins
source ~/.cargo/env
