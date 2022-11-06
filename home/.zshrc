#  setup zinit 
## Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"

autoload -Uz compinit && compinit

# color
autoload -Uz colors
colors

# setopt
setopt auto_list
setopt auto_menu
setopt auto_cd
setopt correct
setopt share_history
  
# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

#  .zshrc-lazy 
zinit wait lucid null for \
    atinit'source "$HOME/.zshrc.lazy"' \
    @'zdharma-continuum/null'

eval "$(starship init zsh)"