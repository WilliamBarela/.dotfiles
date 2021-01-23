# ls
alias la="clear; LC_COLLATE=C ls -hal"
alias l="clear; LC_COLLATE=C ls -hl"
alias lr="clear; LC_COLLATE=C ls -haltr"

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

# ssh
alias ttu="clear; ssh -fNTX -L 2222:senj.ttu.edu:22 wilbarel@ssh.ttu.edu"

alias endo="clear; ssh -fNT -L 2223:endo.ttu.edu:22 wilbarel@ssh.ttu.edu && ssh -p 2223 zrce@localhost"

source ~/.bash_devops
