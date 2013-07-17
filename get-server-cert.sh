#!/usr/bin/env bash

if [[ $# != 2 ]]; then
    echo "usage: $0 {server} {port}"
    exit 255
else
    server=$1
    port=$2
fi

# Modified from:
# http://stackoverflow.com/questions/7885785/using-openssl-to-get-the-certificate-from-a-server
#openssl s_client -connect $server:$port -prexit 2>/dev/null </dev/null | sed -n -e '/BEGIN\ CERTIFICATE/,/END\ CERTIFICATE/ p'
openssl s_client -connect $server:$port -prexit -showcerts 2>/dev/null </dev/null | sed -n -e '/BEGIN\ CERTIFICATE/,/END\ CERTIFICATE/ p'

