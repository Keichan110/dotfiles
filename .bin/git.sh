git config --global alias.st status
git config --global alias.sts "status -s"
git config --global alias.br branch
git config --global alias.brm "branch -m"
git config --global alias.brd "branch -d"
git config --global alias.brdd "branch -D"
git config --global alias.sw switch
git config --global alias.swc "switch -c"
git config --global alias.df diff
git config --global alias.dfs "diff --staged"
git config --global alias.ad "add -A"
git config --global alias.adu "add -u"
git config --global alias.adup "add -u -p"
git config --global alias.ci commit
git config --global alias.cim "commit -m"
git config --global alias.cia "commit --amend"
git config --global alias.cian "commit --amend --no-edit"
git config --global alias.mg "merge --no-ff"
git config --global alias.mgff "merge --ff"
git config --global alias.rb rebase
git config --global alias.rbc "rebase --continue"
git config --global alias.rbi "rebase -i"
git config --global alias.cp cherry-pick
git config --global alias.l "log --oneline"
git config --global alias.ll "log --name-status --oneline"
git config --global alias.tree "log --graph --pretty=format:\'%x09%C(auto) %h %Cgreen %ad %Creset%x09by\"%C(cyan ul)%an%Creset\" %x09%C(auto)%s %d\'"
git config --global alias.unstage "reset HEAD"
git config --global alias.al "config --get-regexp ^alias\."