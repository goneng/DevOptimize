# Aliases file ________________

# Shell _______________________
alias la='ls -lha'
alias ll='ls -lh'
alias lt='ls -lht'
alias ltr='ls -lhtr'

# Go to ... ___________________
alias gogit='cd ~/git_repos/'
alias godop='cd ~/git_repos/DevOptimize/'
alias gokube='cd ~/git_repos/Kube_Tutor'

# Git _________________________
# Passing parameters - see https://unix.stackexchange.com/a/366683/19894
alias gg='_gitg(){ git gui "$@" &; unset -f _gitg; }; _gitg'
alias gk='_gitk(){ gitk    "$@" &; unset -f _gitk; }; _gitk'

# KubeCTL _____________________
# alias setkube="source ~/.bash_k8s_prompt"
alias k="kubectl"
alias kd="kubectl describe"
alias kg="kubectl get"
alias kgp="kubectl get pods"
alias kgs="kubectl get services"
alias kns="kubectl config set-context --current --namespace"
alias kuc="kubectl config use-context"

