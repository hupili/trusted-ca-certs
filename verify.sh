#!/usr/bin/env bash

if [[ $# != 1 ]]; then
    echo "usage: $0 {file}"
    echo "\t{file} is PEM formatted and should contain all local certificates"
    echo "\ti.e. it is a valid chain all the way up to a root CA."
    echo "\tThe file output by `get-server-cert.sh` can be input of this script"
    exit 255
else
    file=$1
fi

_me=$0
_dir=`dirname $_me`
_dir_certs="$_dir/certs"

openssl verify -CApath $_dir_certs -CAfile $file $file
