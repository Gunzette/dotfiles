#
# Gunzette's Fish Config
#

### EXPORTS

set fish_greeting	# disables fish intro message
set EDITOR "vim"
set VISUAL "Kate"	# nothing better installed rn :(

#TODO: manpager

#TODO: colors

### ALIASES

# added flags
alias df="df -h"	# readable sizes
alias grep="grep --color=auto"	# colorized grep

# git
alias gcommit="git commit -m"	# commit with message
alias gclone="git clone"	# clone git repo
alias ghclone="gh repo clone"	# clone github repo
#TODO: more

# clearscript
alias clear="clear; fastfetch"


### STARTUP

fastfetch

starship init fish | source
