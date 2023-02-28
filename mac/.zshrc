[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
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

export ZPLUG_HOME=/opt/homebrew/opt/zplug
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:/Users/avan/Software/shell"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/avan/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/avan/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/avan/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/avan/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# pnpm
export PNPM_HOME="/Users/avan/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# yarn
export PATH="$PATH:/Users/avan/.yarn/bin"
# yarn end

alias ga="git add"
alias gc="git commit -v"
alias gl="git pull"
alias gp="git push"
alias gco="git checkout"
alias gst="git status -sb"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -- | less"

alias rm="trash -F"
alias zj="zellij"
alias lg='lazygit'

alias openproxy="export http_proxy=http://127.0.0.1:10086;export https_proxy=http://127.0.0.1:10086;"
alias closeproxy="unset http_proxy; unset https_proxy"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"

# bun completions
[ -s "/Users/avan/.bun/_bun" ] && source "/Users/avan/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/avan/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
