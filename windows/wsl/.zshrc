export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
git
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

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "jeffreytse/zsh-vi-mode"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose


source $ZSH/oh-my-zsh.sh

alias openproxy="export http_proxy='http://172.17.176.1:7890'; export https_proxy='http://172.17.176.1:7890'"
alias closeproxy="unset http_proxy; unset https_proxy"

alias ga="git add"
alias gc="git commit -v"
alias gl="git pull"
alias gp="git push"
alias gco="git checkout"
alias gst="git status -sb"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -- | less"

# fnm
FNM_PATH="/home/avanlan/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/avanlan/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

neofetch | lolcat
figlet "Hello, Avan!" | lolcat
quote | cowsay | lolcat
