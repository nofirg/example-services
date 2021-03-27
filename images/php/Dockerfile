FROM php:8.0-fpm-alpine

WORKDIR /app

RUN apk add --update \
        bash \
        curl \
        libpng-dev \
        libqrencode \
        libzip-dev \
        rabbitmq-c-dev \
        nginx \
        postgresql-dev \
        zip \
    && apk add --virtual .build-deps g++ autoconf make zlib-dev libxml2-dev \
    && pecl install redis xdebug amqp-1.11.0beta \
    && docker-php-ext-enable redis amqp \
    && docker-php-ext-install mysqli opcache pdo_mysql pdo_pgsql gd soap zip bcmath \
    && apk del .build-deps \
    && rm -rf /var/cache/apk/*

ARG IMAGE_VERSION
ARG BUILD_DATE
ENV IMAGE_VERSION ${IMAGE_VERSION}
ENV BUILD_DATE ${BUILD_DATE}

RUN rm /usr/local/etc/php-fpm.d/*.conf
COPY php.ini /usr/local/etc/php/php.ini
COPY www.conf /usr/local/etc/php-fpm.d/www.conf
COPY debug.sh /debug.sh
