#!/bin/zsh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

for dotfile in "${SCRIPT_DIR}"/.??* ; do
    [[ "$dotfile" == "${SCRIPT_DIR}/.git" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.github" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.DS_Store" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.config" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.emacs.d" ]] && continue # emacsは除外

    ln -fnsv "$dotfile" "$HOME"
done

# --------------------------------------------------
# .config以下のファイル
# --------------------------------------------------
# shelldon
TARGET_DIR=".config/sheldon"
mkdir -p "${HOME}/${TARGET_DIR}"
ln -fnsv "${SCRIPT_DIR}/${TARGET_DIR}/plugins.toml" "${HOME}/${TARGET_DIR}"
# tmux
TARGET_DIR=".config/tmux"
mkdir -p "${HOME}/${TARGET_DIR}"
ln -fnsv "${SCRIPT_DIR}/${TARGET_DIR}/default.session.conf" "${HOME}/${TARGET_DIR}"

# --------------------------------------------------
# github関連
# --------------------------------------------------
# alacritty-theme
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
# tmux-plugin-manager
mkdir -p ~/.config/tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm