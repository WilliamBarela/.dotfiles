# ls
alias la="clear; LC_COLLATE=C ls -hal"
alias l="clear; LC_COLLATE=C ls -hl"
alias lr="clear; LC_COLLATE=C ls -haltr"

# Go convenience aliases:
alias gocover="go test -coverprofile=coverage.tmp > /dev/null && go tool cover -func=coverage.tmp && rm coverage.tmp"
alias gocoverhtml="go test -coverprofile=coverage.tmp > /dev/null && go tool cover -html=coverage.tmp && rm coverage.tmp"

# swapkiller
alias swapfresh="free -h; sudo swapoff -a && sudo swapon -a; echo '##################'; echo 'swap cleared!'; echo '##################'; free -h;"

# git
alias gitlog="git log --oneline --graph --all --decorate --stat"   # pretty graph of a projects log
alias cdr='cd $(git root)'    # alias cdr to move to root directory of git project

# alias awkcsv so that you don't have to worry about those pesky commas which are in the text and not delimiters
alias awkcsv=$'awk -vFPAT=\'([^,]*)|("[^"]+")\' -vOFS=,'

# bash
alias df="df -x'squashfs' -x'tmpfs'"    # exclude tmpfs and squashfs from df

# random
alias httpserver="python3 -m http.server 2785"    # spin up a web server with python

# node for yarn:
# alias node=nodejs

# rails specific aliases:
alias treemvc="clear; tree app/models/ app/views/ app/controllers/"

# cls
# https://stackoverflow.com/questions/5367068/clear-a-terminal-screen-for-real/5367075#5367075
alias cls='echo -en "\ec"'
