#  CRUX - ZSH
#----------------

# OH MY ZSH
export ZSH=$HOME/.oh-my-zsh

# USER CONF
export PATH="/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/opt/bin:/sbin:/usr/sbin:/home/s3r0/Quake3:/home/s3r0/.config/bspwm/panel:/home/s3r0/Android/jdk1.8.0_45/bin"

# Android
#export LD_LIBRARY_PATH=~/Android/android-sdk-linux/tools/lib64:$LD_LIBRARY_PATH

# Nvidia TV
export LD_LIBRARY_PATH=/usr/lib32/nvidia:/usr/lib32/nvidia:$LD_LIBRARY_PATH

# THEME
#ZSH_THEME="michelebologna"
#ZSH_THEME="wuffers-old"
ZSH_THEME="s3r0"

# PLUGINS
plugins=(command-coloring)

# SOURCE
source $ZSH/oh-my-zsh.sh

# PANEL
export PANEL_FIFO="/tmp/panel-fifo"

# COLOR MAN PAGE
man() {
  /usr/bin/man $* | \
    col -b | \
    vim -R -c 'set ft=man nomod nolist' -
}

# COLORLS
export GCC_COLORS=1

# w3m-image
#export W3MIMGDISPLAY_PATH=/usr/libexec/w3m/w3mimgdisplay

# Highlighter
. ~/Git/hhighlighter/h.sh

# ALIASES
alias logs='tail -f /var/log/messages | ccze -c ansi'
alias pingme='ping 127.0.0.1 | ccze -c ansi'
alias colors='~/Scripts/./colors'
alias colors2='~/Scripts/./colors2'
alias colorsdna='~/Scripts/./colorsdna'
alias colorsdot='~/Scripts/./colorsdot'
alias spectrum='~/Scripts/./spectrum'
alias info='~/Scripts/./info'
alias pipesx='pipesX.sh -n 3 -R'
alias pipes='pipes.sh'
alias rain='rain.sh'
alias mc='mc -S mc-dc-brown'
alias screenfetch='screenfetch -a ~/Scripts/cruxfetch.png'

# UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# TERM
export TERM=rxvt-unicode-256color


# ZSH HISTORY
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# easier extraction
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2) tar xvjf $1;;
            *.tar.gz) tar xvzf $1;;
	    *.tar.xz) tar -xvJf $1;;
            *.bz2) bunzip2 $1;;
            *.rar) unrar x $1;;
            *.gz) gunzip $1;;
            *.tar) tar xvf $1;;
            *.tbz2) tar xvjf $1;;
            *.tgz) tar xvzf $1;;
            *.zip) unzip $1;;
            *.Z) uncompress $1;;
            *.7z) 7za x $1;;
            *) echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
