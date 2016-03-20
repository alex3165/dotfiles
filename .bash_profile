
# Aliases ---------------
# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

alias applepie="cd ~/Development/piemapping/apple-pie"
alias pietruck="cd ~/Development/piemapping/PieTruck"
alias pie="cd ~/Development/piemapping"
alias piemap="applepie && subl . && open -a /Applications/Google\ Chrome.app 'http://localhost:3000' && npm run develop"
alias dl="docker logs"
alias dme="docker-machine env && eval $(docker-machine env)"

# lock computer from command line
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Edit host file
alias hosts='sudo $EDITOR /etc/hosts'

alias ls='ls -GFh'
alias ll='ls -laG'
alias l='ls -lG'
alias la="ls -l | awk '
{
  k=0;
  for (i=0;i<=8;i++)
    k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));
  if (k)
    printf(\"%0o \",k);
  printf(\" %9s  %3s %2s %5s  %6s  %s %s %s\n\", \$3, \$6, \$7, \$8, \$5, \$9,\$10, \$11);
}'"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com" # Public ip
alias localip="ipconfig getifaddr en1" # Local ip
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

alias fs="stat -f \"%z bytes\""

# Env variables ---------------
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GOPATH=$HOME/Development/go
export PATH=$PATH:$HOME/bin:/usr/local/mysql/bin:$GOPATH/bin
export PRIVATE_IP=192.168.99.100
export REGION=europe-west1
export ZONE=europe-west1-b

alias gopie="cd $GOPATH/src/github.com/piemapping"

# Functions ---------------
# Create a new directory and enter it
function md() {
    mkdir -p "$@" && cd "$@"
}

function server() {
    local port="${1:-8000}"
    open "http://localhost:${port}/"
    # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
    # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
    python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

function replaceScheduler() {
  applepie
  cd submodules/pie-scheduler
  git pull
  cd ../../
  rm -rf node_modules/pieScheduler
  npm install
  echo "Don't forget to change path to pie scheduler in jsx files if changed"
}
