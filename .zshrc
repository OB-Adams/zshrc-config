# -------------------------------
# 🧠 Performance + Powerlevel10k
# -------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# -------------------------------
# ⚙️ Plugins
# -------------------------------
plugins=(
  git
  z
  sudo
  colored-man-pages
  command-not-found
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf
)

source $ZSH/oh-my-zsh.sh

# -------------------------------
# 🔍 Autocomplete & Suggestions
# -------------------------------
# Light color suggestion for autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'  # light grey
ZSH_HIGHLIGHT_STYLES[unknown-command]='fg=240'

# Syntax highlight theme
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# -------------------------------
# 🛠 Useful Aliases
# -------------------------------
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'
alias gs='git status'
alias vim='nvim'
alias cat='batcat' # uses bat for better cat
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

# -------------------------------
# 🚀 Productivity Tools
# -------------------------------
# Enable zoxide for smart directory jumping
eval "$(zoxide init zsh)"

# fzf setup (if installed)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# -------------------------------
# 🖼 Login Banner
# -------------------------------
neofetch

# -------------------------------
# 🌈 Prompt (Powerlevel10k)
# -------------------------------
# Run this to reconfigure your prompt:
# p10k configure

# -------------------------------
# 📍 Path Fixes (optional)
# -------------------------------
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Oh My Zsh plugins

# This must be LAST
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Fix red unknown command color
ZSH_HIGHLIGHT_STYLES[unknown-command]='fg=240'
export TERM=xterm-256color
export COLORTERM=truecolor
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=242' 
