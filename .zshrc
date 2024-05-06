 # Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

# Load and initialise completion system
# autoload -Uz compinit
# compinit
export PATH="/Users/haoran/.local/bin:$PATH"

# export https_proxy=https://127.0.0.1:1086 http_proxy=http://127.0.0.1:1086 all_proxy=socks5://127.0.0.1:1086

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/haoran/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/haoran/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/haoran/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/haoran/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# alias python=/opt/homebrew/bin/python3
# alias pip=/opt/homebrew/bin/pip3
alias vim=nvim
alias la="ls -a"
alias ll="ls -la"
alias jo="joshuto"
alias rm="rm -i"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"

export PATH="/Users/haoran/miniconda3/envs/llm/bin:$PATH"
# export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export HOMEBREW_NO_AUTO_UPDATE=1

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"


