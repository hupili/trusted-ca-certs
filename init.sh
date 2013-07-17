#!/usr/bin/env sh

src="sources"
dst="certs"

rm -rf $dst
mkdir -p $dst
cd $dst

for path in `find ../$src -name "*.crt"`
do
    fn=`basename $path`
    # c_rehash do not process *.crt...
    ln -s $path $fn.pem
done

c_rehash .

cd -
