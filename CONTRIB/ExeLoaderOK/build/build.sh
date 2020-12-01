#!/bin/sh

error () {
    printf "\033[31m[-] Error: $1\033[0m\n"
    exit 1
}

success () {
    printf "\033[32m[+] $1\033[0m\n"
    exit 0
}

info () {
    printf "\033[36m[*] $1\033[0m\n"
}

logfile=/tmp/exeloader.build.log

info "build in progress... Please wait..."
dosemu -dumb -quiet -E "build\\build.bat" > $logfile 2>/dev/null
grep -Fq "Error" $logfile && cat $logfile && error "Build failed"

success "Build success"
