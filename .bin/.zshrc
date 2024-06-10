path=(
  /opt/homebrew/bin(N-/)
  /opt/homebrew/sbin(N-/)
  /usr/bin
  /usr/sbin
  /bin
  /sbin
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  /Library/Apple/usr/bin
)

# import aliases
source ~/.zsh_aliases

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# editor
export EDITOR='vim'

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 色を使用
autoload -Uz colors ; colors

# 補完機能を有効
autoload -Uz compinit ; compinit

# cdとlsの省略
setopt auto_cd
function chpwd() { ls }

# lsのカラー表示
export LSCOLORS=cxfxcxdxbxegedabagacad

# 新しいコマンドを即認識
zstyle ":completion:*:commands" rehash 1

# 日本語ファイル名を表示可能に
setopt print_eight_bit

# Sheldonをロード
eval "$(sheldon source)"

# historyの保存数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# 同時に起動した zsh の間でヒストリを共有する
setopt share_history

# 直前と同じコマンドの場合はヒストリに追加しない
setopt hist_ignore_dups

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 先頭にスペースがある場合はヒストリに残さない
setopt hist_ignore_space

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
