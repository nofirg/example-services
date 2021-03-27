#!/usr/bin/env bash

php-fpm \
    -d zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20190902/xdebug.so \
    -d xdebug.remote_connect_back=0 \
    -d xdebug.remote_host=host.docker.internal \
    -d xdebug.remote_enable=1 \
    -d xdebug.remote_port=9000 \
    -d xdebug.idekey=debug \
    -d xdebug.remote_autostart=1
