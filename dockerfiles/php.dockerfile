FROM php:8.2-fpm-alpine

# Install necessary packages and utilities
RUN apk --no-cache add shadow

# Change the user ID of www-data to match the host user
RUN usermod -u 1000 www-data

# Install required PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Set working directory
WORKDIR /var/www/html

# Ensure that the storage and bootstrap/cache directories are writable by the web server user
RUN mkdir -p /var/www/html/storage /var/www/html/bootstrap/cache \
    && chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache \
    && chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache
