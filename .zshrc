alias tmux="TERM=screen-256color-bce tmux"

source ~/.bash_profile
source ~/.zshuery/zshuery.sh
load_defaults
load_aliases
load_completion ~/.zshuery/completion/src
load_correction

#test
# Setting up aliases
alias rake="noglob rake"
alias rake1.9="noglob rake1.9"

alias -g nmap="nmap --reason --open"
alias -g ll="ls -lsah"
alias -g mkdir="mkdir -vp"

alias -g resources="~/Documents/resources"

alias ssh-nyi3l="ssh -p 26961 qgrosperrin@nyi3l.gdssecurity.com"
alias ssh-nyi4l="ssh -p 26961 qgrosperrin@nyi4l.gdssecurity.com"
alias scp-nyi3l="scp -pr -P 26961 qgrosperrin@nyi3l.gdssecurity.com:"
alias scp-nyi4l="scp -pr -P 26961 qgrosperrin@nyi4l.gdssecurity.com:"

alias en0="ifconfig en0 | grep \"inet \" | grep -v 127.0.0.1 | cut -d\  -f2"
alias en1="ifconfig en1 | grep \"inet \" | grep -v 127.0.0.1 | cut -d\  -f2"

bindkey "^[OD" backward-word
bindkey "^[OC" forward-word

# Autocompletion of aliases
zstyle ':completion:*' completer _expand_alias _complete _ignored

# Prompts
function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

function branch_name() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(git rev-parse --short HEAD 2> /dev/null) || return
    echo "%{$fg[red]%}[%{$reset_color%}%{$fg[blue]%}${ref#refs/heads/}%{$fg[red]%}]%{$reset_color%}"
}

PROMPT='%{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}$(branch_name) %{$fg[yellow]%}$(prompt_char)%{$reset_color%} '
RPROMPT="%{$fg[cyan]%}%D{%d-%m-%Y} [%*]%{$reset_color%}"

unset collapse_pwd
unset branch_name

# Setting up PATH variables
export PATH=$PATH:/opt/local/bin/
export PATH=$PATH:/opt/local/sbin/
export PATH=$PATH:/Applications/AndroidSDK/sdk/tools:/Applications/AndroidSDK/sdk/platform-tools:/Applications/AndroidSDK/sdk/build-tools/android-4.4W
export PATH=$PATH:/Users/gds/Documents/resources/tools/mobile/android/apktool
export PATH=$PATH:/opt/mongodb/bin
export PATH=$PATH:/opt/theos/bin:/opt/theos/bin/ldid
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_4.21/bin

export THEOS=/opt/theos
export THEOS_DEVICE_IP=127.0.0.1 THEOS_DEVICE_PORT=2222

export GRADLE_HOME=/opt/local/share/java/gradle
export PATH=$PATH:GRADLE_HOME/bin

export LESS=-m
export GREP_OPTIONS='--color=always'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
