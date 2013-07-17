# A Collection of Trusted CA Certs

The certs are derived from the following sources:

   * Deb package: `ca-certificates_20130610_all.deb`

## Usage

   * Issue `./init.sh` to build the `certs/` dir for further use.
   * Supply the `certs/` dir to `openssl` if necessary.

## TODO

   * `verify.sh` is not ideal at present.
   If the site gives a key chain with a self-signed cert, it will return "OK".
   Without `-CAfile <itself>`, `openssl` will complain "unable to get local issuer certificate".
   Welcome your solution.


