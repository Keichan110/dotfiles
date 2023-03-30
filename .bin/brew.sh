#!/bin/zsh

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

echo "brew doctor"
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew doctor

echo "brew update ..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew update --verbose

echo "install brew package ..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew bundle --global

echo "brew cleanup ..."
which brew >/dev/null 2>&1 && brew cleanup --verbose
