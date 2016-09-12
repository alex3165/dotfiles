
# Aliases ---------------

alias w="cd ~/Development/travelsharing"
alias dps="docker ps"
alias dev="cd ~/development"
alias uuid="python -c 'import sys,uuid; sys.stdout.write(uuid.uuid4().hex)' | pbcopy && pbpaste && echo"
alias food="python3 ~/Development/food/main.py"

# lock computer from command line
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Edit host file
alias hosts='sudo $EDITOR /etc/hosts'


# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com" # Public ip
alias localip="ipconfig getifaddr en1" # Local ip
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

alias fs="stat -f \"%z bytes\""

# Env variables ---------------
export REGION=europe-west1
export ZONE=europe-west1-b

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
