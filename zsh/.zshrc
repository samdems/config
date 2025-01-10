if [ "$TMUX" = "" ]; then tmux; fi

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "romkatv/powerlevel10k"
export VI_MODE_ESC_INSERT="jk" && plug "zap-zsh/vim"
plug "zap-zsh/exa"
plug "zap-zsh/sudo"
plug "zap-zsh/fzf"
plug "GianniBYoung/omz-take"


#zmodule exa

# Load and initialise completion system
autoload -Uz compinit
compinit

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh


alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias vim='nvim'
alias vi='nvim'
alias lg='lazygit'
alias s='sail'
alias art='sail artisan'
alias dbm='mycli -u sail -p password laravel'
alias dbp='pgcli postgresql://sail:password@localhost:5432/wise'

e() {
  if [ $# -eq 0 ]; then
    nvim
  else
    nvim "$@"
  fi
}


export EDITOR=nvim


bindkey -s '^F' 'fzf\n'
