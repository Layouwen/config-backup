# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# Homebrew
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"
# Input your path
export HOMEBREW_PREFIX_CUSTOM=/opt/homebrew

# Home path
# Input your path
export ME="/Users/avan"

# ZSH
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="agnoster"
ZSH_THEME="spaceship"
# spaceship 主题需要执行下面的命令
# > git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# > ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

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

export ZPLUG_HOME=$HOMEBREW_PREFIX_CUSTOM/opt/zplug
source $ZPLUG_HOME/init.zsh

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

ZSH_WEB_SEARCH_ENGINES=(bl "https://search.bilibili.com/all?keyword=")

source $ZSH/oh-my-zsh.sh

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX_CUSTOM/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX_CUSTOM/opt/nvm/nvm.sh"  # This loads nvm
[ -s "$HOMEBREW_PREFIX_CUSTOM/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX_CUSTOM/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# brew install autojump
[ -f $HOMEBREW_PREFIX_CUSTOM/etc/profile.d/autojump.sh ] && . $HOMEBREW_PREFIX_CUSTOM/etc/profile.d/autojump.sh

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

# Application
alias aarc="/Applications/Arc.app/Contents/MacOS/Arc --autoplay-policy=no-user-gesture-required > /dev/null 2>&1 &"
alias achrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --autoplay-policy=no-user-gesture-required > /dev/null 2>&1 &"

# bun completions
[ -s "$ME/.bun/_bun" ] && source "$ME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# go
export PATH=$PATH:/usr/local/go/bin

# Load Angular CLI autocompletion.
source <(ng completion script)

# pnpm
export PNPM_HOME="$ME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

neofetch | lolcat
figlet "Hello, Avan!" | lolcat
quote | cowsay | lolcat

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

eval $(thefuck --alias)
