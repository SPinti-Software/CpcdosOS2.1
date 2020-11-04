#!/bin/sh

error () {
    echo -e "\033[31m[-] Error: $1\033[0m"
    exit 1
}

success () {
    echo -e "\033[32m[+] $1\033[0m"
    exit 0
}

info () {
    echo -e "\033[36m[*] $1\033[0m"
}

logfile=/tmp/exeloader.build.log

info "build in progress... Please wait..."
dosemu -dumb -quiet -E "build\\build.bat" > $logfile 2>/dev/null
grep -Fq "Error" $logfile && cat $logfile && error "Build failed"

success "Build success"