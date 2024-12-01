FROM php:8.2-fpm-alpine 

WORKDIR /var/www/html 

COPY . /var/www/html 

# RUN docker-php-ext-install pdo pdo-mysql
RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache \
    && chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

