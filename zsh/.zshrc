export DISABLE_AUTO_TITLE='true'
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh

plugins=(git)

setopt HIST_IGNORE_ALL_DUPS
bindkey -e
WORDCHARS=${WORDCHARS//[\/]}
ZSH_AUTOSUGGEST_MANUAL_REBIND=1
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias vim='nvim'
alias vi='nvim'
alias lg='lazygit'
alias s='sail'
alias art='sail artisan'
alias dbm='mycli -u sail -p password laravel'
e() {
  if [ $# -eq 0 ]; then
    nvim
  else
    nvim "$@"
  fi
}

export EDITOR=nvim
