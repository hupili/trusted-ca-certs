#!/usr/bin/env bash

if [[ $# != 1 ]]; then
    echo "usage: $0 {file}"
    echo "\t{file} is PEM formatted"
    echo "\tThe file output by `get-server-cert.sh` can be input of this script"
    exit 255
else
    file=$1
fi

openssl x509 -noout -in $file -text
