#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Starship prompt
eval "$(starship init zsh)"

# PATH additions
export PATH="$PATH:/home/jojo/Programs/VisualStudioCode/VSCode-linux-x64/bin"
export PATH="$HOME/.local/bin:$PATH"
. "$HOME/.cargo/env"
export PATH="$HOME/scripts:$PATH"

# Default editor
export EDITOR="nvim"

# Zoxide
eval "$(zoxide init zsh)"

# ----------------------------
# Zsh plugins
# ----------------------------

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Optional: enable autosuggestions as you type
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'  # subtle gray suggestions

# Optional: nice colored prompt if you want a fallback
autoload -U colors && colors
