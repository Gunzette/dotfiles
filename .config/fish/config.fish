#
# Gunzette's Fish Config
#

### PATH
export PATH="$PATH:$HOME/.cargo/bin:$HOME/bin"

###EXPORTS
set fish_greeting	# disables fish intro message
set EDITOR "nvim"
set VISUAL "vscodium"	# nothing better installed rn :(

# manpager
set -x MANPAGER "nvim +Man!"

#TODO: colors

bind \cy accept-autosuggestion

### ALIASES

# replacements
alias vim="nvim"
alias ovim="nvim \$(fzf)"

alias lsshort="eza -a"
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
alias gpull="git pull"
alias gstatus="git status"
#TODO: more

# clearscript
# alias clear="clear && fastfetch"

# python wallpaper switcher
alias wallpyper="python ~/.wallpaper/switcher.py"

### STARTUP

fastfetch

fzf --fish | source

zoxide init fish --cmd cd | source

function starship_transient_prompt_func
  starship module character
end
starship init fish | source
enable_transience
