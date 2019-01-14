# Setting up PATH variables
export PATH=$PATH:/opt/local/bin/
export PATH=$PATH:/opt/local/sbin/
export PATH=$PATH:/Users/gds/Library/Android/sdk/platform-tools:/Users/gds/Library/Android/sdk/tools
export PATH=$PATH:/Users/gds/Dropbox/resources/tools/mobile/android/apktool
export PATH=$PATH:/opt/mongodb/bin
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
export PATH=$PATH:/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_4.21/bin
export PATH=/usr/local/opt/gnu-getopt/bin:$PATH
export PATH=/usr/local/Cellar/bash/4.4.12/bin/:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin

export THEOS=/opt/theos
export PATH=$THEOS/bin:$PATH
export THEOS_DEVICE_IP=127.0.0.1 THEOS_DEVICE_PORT=2222

export GRADLE_HOME=/opt/local/share/java/gradle
export PATH=$PATH:GRADLE_HOME/bin

export PYTHONPATH=/usr/local/lib/python2.7/site-packages

export HOMEBREW_NO_ANALYTICS=1
export LESS=-m
export GREP_OPTIONS='--color=auto'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

source $HOME/.redteam_helpers
source $HOME/.gds_dotfile

# Helper functions
function end-of-line() { echo "CTRL+E mfer !"; }
function beginning-of-line() { echo "CTRL+A mfer !"; }

function txt() { 
	grep -i -r "${1:-8000}" ~/Dropbox/resources/cheat_sheets/txt; 
}

function update-repos() {
    echo "[!] This may break some install (e.g. Veil). Watch out !!"
    pushd .
    for i in `find ~/tools/red_team -name .git -type d -prune -exec dirname {} \;`
    do
        cd $i

        BRANCH=$(git rev-parse --abbrev-ref HEAD)
		if [[ "$BRANCH" != "master" ]]; then
		  echo "Aborting update for `pwd`. Not in master branch"
		  continue
		fi

        git pull
        URL=$(git config --get remote.origin.url 2>&1)
        echo "Updating ${URL} ..."
    done
    popd
}

function log() {
	#* Formatted date & time string.
	FORMATTED_DATE=`/bin/date "+%d-%m-%Y-%H%M%S"`

	#* Begin a new one
	/usr/bin/script -q ~/Terminal/Terminal-$FORMATTED_DATE.log
}

function getPublicIP() {
    echo "wget http://ipinfo.io/ip -qO -"
    wget http://ipinfo.io/ip -qO -
}

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


export PATH="/Applications/HPE_Security/Fortify_SCA_and_Apps_17.10/bin:$PATH"
