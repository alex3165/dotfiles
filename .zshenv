export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin"

export NVM_DIR="/Users/alexandrer/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Preferred editor for local and remote sessions
if which nvim >/dev/null; then
  export VISUAL="$(which nvim)"
elif which vim >/dev/null; then
  export VISUAL="$(which vim)"
else
  export VISUAL="vim"
fi

export EDITOR=$VISUAL