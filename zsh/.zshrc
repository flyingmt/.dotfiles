# Export nvm completion settings for lukechilds/zsh-nvm plugin
# Note: This must be exported before the plugin is bundled
export NVM_DIR=${HOME}/.nvm
export NVM_COMPLETION=true

source ${HOME}/.zsh_plugins.sh

# Bundle zsh plugins via antibody
alias update-antibody='antibody bundle < $HOME/.zsh_plugins.txt > $HOME/.zsh_plugins.sh'
# Colored 'ls' MacOS
alias ls='ls -al'
# Homebrew alias for daily management (MacOS)
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
# List out all globally installed npm packages
alias list-npm-globals='npm list -g --depth=0'
# Adds better handling for `rm` using trash-cli
# https://github.com/sindresorhus/trash-cli
# You can empty the trash using the empty-trash command
# https://github.com/sindresorhus/empty-trash-cli
alias rm='trash'
# use neovim instead of vim
alias vim='nvim'
# checkout branch using fzf
alias gcob='git branch | fzf | xargs git checkout'
# open vim config from anywhere
alias vimrc='vim ${HOME}/.config/nvim/init.vim'

# DIRCOLORS (MacOS)
export CLICOLOR=1
export LSCOLORS=FxFhcxdxbxegedabagacad

# FZF
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_DEFAULT_OPTS="--height=40% --layout=reverse --border --margin=1 --padding=1"
# binds <C-p> to open selected file in vim
bindkey -s '^p' 'vim $(fzf)\n'

# PATH
# export PATH=${PATH}:/usr/local/go/bin
# export PATH=${PATH}:${HOME}/go/bin

# direnv package
# https://direnv.net/
# installed via homebrew
# used because of flexshopper/payment-plugin-3
# https://flexshopper.atlassian.net/wiki/spaces/DEV/pages/1377697814/Getting+Started+pp3
eval "$(direnv hook zsh)"

