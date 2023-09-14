FROM composer:latest as composer
FROM php:latest

# Install composer by copying it from the composer image
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update; apt-get install -y python3-sphinx python3-sphinx-rtd-theme git zip;

WORKDIR /root

CMD bash
