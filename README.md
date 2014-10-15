check-poodle
============

This script check if your server supports SSLv3. This script just use openssl to check if SSLv3 supported. This is important for the poodle attack against SSLv3. http://googleonlinesecurity.blogspot.de/2014/10/this-poodle-bites-exploiting-ssl-30.html

usage
============
./poodle.sh yourServer.foo:Port

example
============
$ ./poodle.sh www.google.de:443

