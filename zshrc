# # Enable colors and change prompt:
 autoload -U colors && colors
 PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
#
# # History in cache directory:
 HISTSIZE=10000
 SAVEHIST=10000



export PATH="$HOME/.local/bin:$PATH"
# # Basic auto/tab complete:
 autoload -U compinit
 zstyle ':completion:*' menu select
 zmodload zsh/complist
 compinit
 _comp_options+=(globdots)	

autoload -Uz promptinit
promptinit

export PATH="/home/username/miniconda/bin:/opt/miniconda3/bin/:$PATH"


# Load zsh-syntax-highlighting; should be last.
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
#Plugins
source ~/git/antigen.zsh

#Bundles
antigen use oh-my-zsh
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
#antigen theme agnoster
antigen theme half-life
antigen apply

#Aliases

alias 'v'='nvim'
alias 'j'='julia'
alias 'sc'='sudo make clean install'
alias 'prog'='cd ~/prog/'
alias 'hr'='cd ~/prog/hindmarsh_rose_project/'
alias 'hr3'='cd ~/prog/hindmarsh_rose_project/3_ISI_phase_diagram'
alias 'rd'='cd ~/books/'
alias 'ph'='cd ~/books/physics/'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/vinitg/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/vinitg/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/vinitg/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/vinitg/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

