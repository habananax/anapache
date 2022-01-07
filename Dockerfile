FROM php:7.4-apache

COPY sri.asir4all.ss.conf /etc/apache2/sites-available/000-default.conf
COPY servidor.php /var/www/html/servidor.php

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli && a2enmod auth_basic && a2enmod info && a2enmod status && a2enmod auth_digest

