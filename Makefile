# Do everything.
all: init link defaults brew asdf git_alias

# Set initial preference.
init:
	.bin/init.sh

# Link dotfiles.
link:
	.bin/link.sh

# Set macOS system preferences.
defaults:
	.bin/defaults.sh

# Install macOS applications.
brew:
	.bin/brew.sh

# Install asdf applications.
asdf:
	.bin/asdf.sh

# Setup git alias
git:
	.bin/git.sh