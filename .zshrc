source ~/.bash_profile
source ~/.profile
source ~/.zshuery/zshuery.sh
load_defaults
load_aliases
load_completion ~/.zshuery/completion/src
load_correction

# Setting up aliases
alias rake="noglob rake"
alias rake1.9="noglob rake1.9"

alias -g ll="ls -lsah"
alias -g mkdir="mkdir -vp"

alias -g resources="~/Dropbox/resources"

alias clean-aliases="unalias -m '*'"

alias nmap-full-tcp-connect-version="nmap -sTV -p- --open --reason -v -Pn"
alias nmap-1000-tcp-connect-version="nmap -sTV --open --reason -v -Pn"
alias nmap-full-udp="sudo nmap -sU -p- --open -v -Pn"
alias nmap-1000-udp="sudo nmap -sU --open -v -Pn"


alias en0="ifconfig en0 | grep \"inet \" | grep -v 127.0.0.1 | cut -d\  -f2"
alias en1="ifconfig en1 | grep \"inet \" | grep -v 127.0.0.1 | cut -d\  -f2"

bindkey -e
bindkey '^[[1;9D' forward-word
bindkey '^[[1;9C' backward-word

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


PATH="/Users/gds/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/gds/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/gds/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/gds/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/gds/perl5"; export PERL_MM_OPT;

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
