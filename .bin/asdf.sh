#!/bin/zsh

#install programming language
which asdf >/dev/null 2>&1 && asdf plugin add ruby && asdf install ruby latest && asdf global ruby latest
which asdf >/dev/null 2>&1 && asdf plugin add nodejs && asdf install nodejs latest && asdf global nodejs latest
