# A Collection of Trusted CA Certs

The certs are derived from the following sources:

   * Deb package: `ca-certificates_20130610_all.deb`

## Usage

   * Issue `./init.sh` to build the `certs/` dir for further use.
   (I have already done this, so the cloned repo is ready to use)
   * Supply the `certs/` dir to `openssl` if necessary.

## Recommended Setup for OpenSSL

Some comands, e.g. `svn` depends on openssl to verify certs.
( [example issue](http://cloudbbs.org/forum.php?mod=viewthread&tid=16773) )
You can setup `openssl` so that it uses certs from this repo.

### Mac OS X

You can link the `certs/` under this repo to `/System/Library/OpenSSL/certs`,
which will be used by `openssl` by default.

## TODO

   * `verify.sh` is not ideal at present.
   If the site gives a key chain with a self-signed cert, it will return "OK".
   Without `-CAfile <itself>`, `openssl` will complain "unable to get local issuer certificate".
   Welcome your solution.

## License

MIT
