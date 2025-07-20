export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
export PATH=$PATH:/opt/homebrew/bin:/usr/local/bin/
export PATH=$PATH:$HOME/.istioctl/bin
source /opt/homebrew/etc/bash_completion
source <(kubectl completion bash)
#alias k=kubectl
alias k=kubecolor
complete -F __start_kubectl k
complete -o default -F __start_kubectl k




NORMAL="\[\033[00m\]"
BLUE="\[\033[01;34m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
YELLOW="\[\e[1;33m\]"

source ~/mybash_prompt.sh

complete -o default -F __start_kubectl p

#export PS1="${BLUE}\W ${GREEN}\u${RED}\$(__kube_ps1)${NORMAL} - \w #> "
export PS1="${YELLOW}\$(aws_profile)${NORMAL} - ${RED}\$(__kube_ps1)${NORMAL} - ${GREEN}\$(git_branch)${NORMAL} ${BLUE}\w ${NORMAL}${YELLOW} -> ${NORMAL}"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
