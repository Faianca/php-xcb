rm $(php-config --extension-dir)/xcb.so
make clean
phpize --clean

phpize
aclocal
libtoolize --force
autoheader
autoconf
./configure --with-xcb --enable-debug
make
make install

php --re xcb

php test.php
