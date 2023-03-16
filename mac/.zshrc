# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# Homebrew
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"

# Home path
export ME="/Users/youwenliang"

# ZSH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
z
sudo
rand-quote
colored-man-pages
safe-paste
extract
cp
copyfile
copypath
web-search
command-not-found
macos
)

quote | cowsay

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "jeffreytse/zsh-vi-mode"
zplug "jimhester/per-directory-history"

if ! zplug check --verbose; then
	    printf "Install? [y/N]: "
	        if read -q; then
			        echo; zplug install
				    fi
fi

zplug load --verbose

ZSH_WEB_SEARCH_ENGINES=(bl "https://search.bilibili.com/all?keyword=")

source $ZSH/oh-my-zsh.sh

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# brew install autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# Custom shell path
export PATH="$PATH:$ME/Software/shell"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$ME/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$ME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$ME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$ME/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Git alias
alias ga="git add"
alias gc="git commit -v"
alias gl="git pull"
alias gp="git push"
alias gco="git checkout"
alias gst="git status -sb"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -- | less"

# Aliases
alias rm="trash -F"
alias zj="zellij"
alias lg='lazygit'

# Proxy
alias openproxy="export http_proxy=http://127.0.0.1:10086;export https_proxy=http://127.0.0.1:10086;"
alias closeproxy="unset http_proxy; unset https_proxy"

# bun completions
[ -s "$ME/.bun/_bun" ] && source "$ME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# go
export PATH=$PATH:/usr/local/go/bin

# Load Angular CLI autocompletion.
source <(ng completion script)

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
