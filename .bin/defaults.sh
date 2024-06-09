#!/bin/zsh

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# ====================
#
# Base
#
# ====================

# 自動大文字の無効化
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# スクロールバーの常時表示
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# スクロールバークリック時にその場所にジャンプ
defaults write -g AppleScrollerPagingBehavior -bool true

# コンソールアプリケーションの画面サイズ変更を高速にする
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# クラッシュレポートの無効化
defaults write com.apple.CrashReporter DialogType -string "none"

# フリーズすると自動的に再起動
sudo systemsetup -setrestartfreeze on

# ====================
#
# Desktop
#
# ====================

# .DS_Storeファイルを作らせない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# ====================
#
# Dock
#
# ====================

# Dockを自動的に隠す
defaults write com.apple.dock autohide -bool true

# Dockのサイズ
defaults write com.apple.dock tilesize -int 18

# Dockの拡大・サイズ
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 54

# ウインドウをしまうときのエフェクト
defaults write com.apple.dock mineffect -string "scale"

# 最近使ったアプリケーションをDockに表示しない
defaults write com.apple.dock "show-recents" -bool false

# 起動中のアプリケーションをアニメションで表示
defaults write com.apple.dock launchanim -bool false

# Launchpadのアニメーション
defaults write com.apple.dock springboard-show-duration -float 0.1
defaults write com.apple.dock springboard-hide-duration -float 0.1

# ====================
#
# Mission Contorl
#
# ====================
# 最新の使用状況に基づいて操作スペースを自動的に並び替える
defaults write com.apple.dock mru-spaces -bool false


# ====================
#
# Menu Bar
#
# ====================

# 時間内の":"を点滅させる
defaults write com.apple.menuextra.clock FlashDateSeparators -bool true

# ====================
#
# Trackpad
#
# ====================

# 軌跡の速さ
defaults write -g com.apple.trackpad.scaling 2.5

# タップでクリック
defaults write -g com.apple.AppleMultitouchTrackpad Clicking -int 1

# 三本指でドラッグ
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# ====================
#
# Keyboard
#
# ====================

# キーのリピート速度
defaults write -g KeyRepeat -int 5

# リピート入力認識までの時間
defaults write -g InitialKeyRepeat -int 15

# ====================
#
# Finder
#
# ====================

# オートマチックウィンドウアニメーションを無効化
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# アニメーションを無効化する
defaults write com.apple.finder DisableAllAnimations -bool true

# 全ての拡張子のファイルを表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true

# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true

# 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# 検索時にデフォルトでカレントディレクトリを検索
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# USBやネットワークストレージに.DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# 常にリストビューで開く
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# サイドバーのアイコンサイズ
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# ====================
#
# Screen Shot
#
# ====================

# スクリーンショットの保存場所
defaults write com.apple.screencapture location ~/Downloads

# スクリーンショットのファイル名
defaults write com.apple.screencapture name "Screenshot"

# スクリーンショットの影を消す
defaults write com.apple.screencapture disable-shadow -bool true

# ====================
#
# VSCode
#
# ====================
# キーリピートを有効化
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false              # For VS Code
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false      # For VS Code Insider
defaults write com.vscodium ApplePressAndHoldEnabled -bool false                      # For VS Codium
defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false   # For VS Codium Exploration users
defaults delete -g ApplePressAndHoldEnabled                                           # If necessary, reset global default

# ====================
#
# SystemUIServer
#
# ====================

# Display date, day, and time in the menu bar
defaults write com.apple.menuextra.clock DateFormat -string 'EEE d MMM HH:mm'

# Display battery level in the menu bar
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

for app in "Dock" \
	"Finder" \
	"SystemUIServer"; do
	killall "${app}" &> /dev/null
done
