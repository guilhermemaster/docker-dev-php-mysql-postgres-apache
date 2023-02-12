FROM php:8.0-apache

RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev \
    unzip \
    libpng-dev \
    libpq-dev \
    libxml2-dev

RUN docker-php-ext-install mysqli pdo pdo_mysql pdo_pgsql pgsql session xml 

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer