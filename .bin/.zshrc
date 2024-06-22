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

source ~/.zsh_aliases # import aliases
bindkey -e # Ctrl+AやCtrl+Bが^Aのようになる対策

. /opt/homebrew/opt/asdf/libexec/asdf.sh # asdf

export EDITOR='vim' # editor

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
eval "$(sheldon source)" # Sheldonをロード

autoload -Uz colors ; colors # 色を使用
autoload -Uz compinit ; compinit # 補完機能を有効

# cdとlsの省略
setopt auto_cd
function chpwd() { ls }

export LSCOLORS=cxfxcxdxbxegedabagacad # lsのカラー表示

zstyle ":completion:*:commands" rehash 1 # 新しいコマンドを即認識

# historyの保存数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt print_eight_bit # 日本語ファイル名を表示可能に
setopt share_history # 同時に起動した zsh の間でヒストリを共有する
setopt hist_ignore_dups # 直前と同じコマンドの場合はヒストリに追加しない
setopt hist_ignore_all_dups # 同じコマンドをヒストリに残さない
setopt hist_reduce_blanks # ヒストリに保存するときに余分なスペースを削除する
setopt hist_ignore_space  # 先頭にスペースがある場合はヒストリに残さない

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
