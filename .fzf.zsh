# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/alexandrer/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/alexandrer/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/alexandrer/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/alexandrer/.fzf/shell/key-bindings.zsh"

