export PATH="$PATH:/c/Users/Avan/.cargo/bin"
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
)

quote | cowsay

source ~/.zplug/init.zsh

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

alias openproxy="export http_proxy='http://127.0.0.1:21882'; export https_proxy='http://127.0.0.1:21882'"
alias openproxy2="export http_proxy='http://192.168.0.103:21882'; export https_proxy='http://192.168.0.103:21882'"
alias closeproxy="unset http_proxy; unset https_proxy"
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

alias ga="git add"
alias gc="git commit -v"
alias gl="git pull"
alias gp="git push"
alias gco="git checkout"
alias gst="git status -sb"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -- | less"

alias webstorm="/d/JetBrains/Toolbox/apps/WebStorm/ch-0/221.5921.27/bin/webstorm64.exe"
alias lg='lazygit'
