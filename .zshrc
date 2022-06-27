ZSH_DISABLE_COMPFIX="true"
export ZSH="/Users/ericomanoff/.oh-my-zsh"
ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ericomanoff/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ericomanoff/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ericomanoff/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ericomanoff/google-cloud-sdk/completion.zsh.inc'; fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/Cellar/tfenv/2.2.2/versions/0.12.30/terraform terraform
export PATH="/usr/local/opt/openssl@3/bin:$PATH"

alias g='git'
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcd='git checkout develop'
alias gd='git diff'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gp='git pull'
alias gl="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all"
alias gm='git merge'
alias gpu='git push'
alias grbi='git rebase -i'
alias gs='git status'

alias tf='terraform'

alias tm='tmux'

alias v='nvim'

export NVIM_TUI_ENABLE_TRUE_COLOR=1
