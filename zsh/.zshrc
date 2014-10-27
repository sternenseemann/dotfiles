# Completion
autoload -U compinit
compinit
setopt completealiases

# PATH
if [[ $(uname) = "Darwin" ]]; then
	export PATH="/usr/local/bin:$HOME/bin:${PATH}:$HOME/Hacking/go/bin" # Homebrew, go
else
	export PATH="$HOME/bin:${PATH}:$HOME/Hacking/go/bin"
fi
#Applications
export EDITOR="vim"
export BROWSER="dwb"

# go
export GOPATH="$HOME/Hacking/go/gopath"
# Prompt

autoload -U promptinit
autoload -U colors && colors
#export PROMPT="
#%{$fg[yellow]%}%n %{$fg[white]%}on %{$fg[yellow]%}%m %{$fg[white]%}in %{$fg[blue]%}%~ 
#> %{$fg[white]%} "
export PROMPT="%B%{$fg[yellow]%}-%{$fg[white]%}%b "
export RPROMPT="%~"

#CLICOLOR
export CLICOLOR="true"

# History
HISTSIZE=10000
SAVEHIST=1000
HISTFILE=~/.history

# Helpers
alias ls="ls --color=auto"
alias uberspace="mosh -p 64374 lukase@lukasepple.de"
alias tma='tmux attach -d -t'
alias doch='sudo $(fc -ln -1)'
# git
alias g=git

#dogetribusted version control
alias such=git
alias very=git
alias wow='git status'

# jump etc.
source $HOME/.zsh_helpers/mark

# new nano uberspace
alias nnano=$HOME/bin/nano


