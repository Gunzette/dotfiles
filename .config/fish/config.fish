#
# Gunzette's Fish Config
#

### PATH
export PATH="$PATH:/home/gunzette/.cargo/bin"

###EXPORTS
set fish_greeting	# disables fish intro message
set EDITOR "nvim"
set VISUAL "vscodium"	# nothing better installed rn :(

# manpager
set -x MANPAGER "nvim +Man!"

#TODO: colors

### ALIASES

# replacements
alias vim="nvim"

alias ls="eza -al --color=always --group-directories-first"
alias lstree="eza -aT --color=always --group-directories-first"

# added flags
alias df="df -h"	# readable sizes
alias grep="grep --color=auto"	# colorized grep

# pacman
alias sysup="sudo pacman -Syyu"

# git
alias gcommit="git commit -m"	# commit with message
alias gpush="git push"
alias gdiff="git diff"
alias gclone="git clone"	# clone git repo
alias ghclone="gh repo clone"	# clone github repo
#TODO: more

# clearscript
alias clear="clear && fastfetch"


### STARTUP

fastfetch

starship init fish | source
