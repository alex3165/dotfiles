# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/alexandrer/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/alexandrer/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */Users/alexandrer/.fzf/man* && -d "/Users/alexandrer/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/Users/alexandrer/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/alexandrer/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/alexandrer/.fzf/shell/key-bindings.zsh"

