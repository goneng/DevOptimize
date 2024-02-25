git config --global alias.alias '! git config --get-regexp ^alias\. | sort'
git config --global alias.aliases '! git config --get-regexp ^alias\. | sort'
git config --global alias.co checkout
git config --global alias.last 'log -1 HEAD'
git config --global alias.lg 'log --decorate --oneline --graph'
git config --global alias.lga 'log --decorate --oneline --graph --all'
git config --global alias.pr 'pull --rebase'
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.visual '!gitk'
