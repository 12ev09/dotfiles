source ~/.zplugrc

# setopt
autoload -Uz compinit && compinit
setopt auto_list
setopt auto_menu
setopt auto_cd
setopt correct
setopt share_history

# exa
if [[ $(command -v exa) ]]; then
  alias e='exa --icons --git'
  alias l=e
  alias ls=e
  alias ea='exa -a --icons --git'
  alias la=ea
  alias ee='exa -aahl --icons --git'
  alias ll=ee
  alias et='exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
  alias lt=et
  alias eta='exa -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
  alias lta=eta
  alias l='clear && ls'
fi

# エイリアス
alias vz='vim ~/.zshrc'
alias soz='source ~/.zshrc'


# 環境変数
export LANG=ja_JP.UTF-8
export LS_COLORS='di=33:ex=31:fi=35'
export PATH="/$HOME/local/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"

# 色を使用出来るようにする
autoload -Uz colors
colors
  
# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

eval "$(pyenv init -)"
eval "$(starship init zsh)"
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
