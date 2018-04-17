FROM php:7.0-apache

RUN a2enmod rewrite

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN apt-get -y update && apt-get install -y --no-install-recommends curl git unzip vim wget

RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer

COPY . ./

RUN composer install
