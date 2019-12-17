git config --global alias.alias '! git config --get-regexp ^alias\. | sort'
git config --global alias.aliases '! git config --get-regexp ^alias\. | sort'
git config --global alias.co checkout
git config --global alias.cp cherry-pick
git config --global alias.last 'log -1 HEAD'
git config --global alias.lg 'log --decorate --oneline --graph'
git config --global alias.lga 'log --decorate --oneline --graph --all'
git config --global alias.pr 'pull --rebase'
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.visual '!gitk'

git config --global "guitool. Pull-Rebase.cmd"          'git pull --rebase'

git config --global "guitool.Cherry-Pick/Continue.cmd"  'git cherry-pick --continue'
git config --global "guitool.Cherry-Pick/__Abort__.cmd" 'git cherry-pick --abort'
git config --global "guitool.Cherry-Pick/__Skip__.cmd"  'git cherry-pick --skip'

git config --global "guitool.Rebase/Continue.cmd"   'git rebase --continue'
git config --global "guitool.Rebase/__Abort__.cmd"  'git rebase --abort'
git config --global "guitool.Rebase/__Skip__.cmd"   'git rebase --skip'

git config --global "guitool.Stash/(Save).cmd"   'git stash save'
git config --global "guitool.Stash/List.cmd"     'git stash list'
git config --global "guitool.Stash/Pop.cmd"      'git stash pop'
git config --global "guitool.Stash/__Drop__.cmd" 'git stash drop'

git config --global "guitool.chmod +x.cmd" 'git update-index --chmod +x $FILENAME'
git config --global "guitool.chmod +x.needsfile" yes
git config --global "guitool.chmod -x.cmd" 'git update-index --chmod -x $FILENAME'
git config --global "guitool.chmod -x.needsfile" yes
