#!/usr/bin/env sh

FPM_HOST=${FPM_HOST:=fpm}
sed -e "s^{{FPM_HOST}}^${FPM_HOST}^g" \
    /etc/nginx/nginx-template.conf > /etc/nginx/nginx.conf

nginx -g 'daemon off;'
