
# Case-insensitive globbing
shopt -s nocaseglob;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

#use colors
force_color_prompt=yes

#shorten prompt
#PS1='[\u@\h \W]$:\n'
#u:username
#h:host
#W:current directory
#PS1='\u in \W\n$:'

#--------------------->
#aliases

alias la="ls -A"
alias tmux="tmux -u" #starts tmux with utf encoding(for powerline fonts) 
alias rm="rm -i"

#--------------------->
# settings shamelessly copied from https://github.com/mathiasbynens/dotfiles/blob/master/.bash_prompt

#--------------------->
#copied settings end

#add pip install folder to path(for powerline)
if [ -d "$HOME/.local/bin" ]; then
        PATH="$PATH:$HOME/.local/bin"
fi

#powerline prompt
export POWERLINE_COMMAND=powerline
export POWERLINE_CONFIG_COMMAND=powerline-config
if [ -f `which powerline-daemon` ]; then
        POWERLINE_BASH_CONTINUATION=1 #use powerline daemon
        POWERLINE_BASH_SELECT=1
        source /home/anirudh/.local/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh
fi

#use utf-8
export LANG="en_US.utf8"
export QT_X11_NO_MITSHM=1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/anirudh/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/anirudh/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/anirudh/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/anirudh/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

