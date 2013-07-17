#!/usr/bin/env sh

src=`pwd`/"ca-certificates_20130610_all.deb"
dst=`pwd`/"certs"

rm -rf $dst
mkdir -p $dst
cd $dst

for path in `find $src -name "*.crt"`
do
    fn=`basename $path`
    # c_rehash do not process *.crt...
    ln -s $path $fn.pem
done

c_rehash .

cd -
