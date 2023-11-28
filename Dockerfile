FROM php:8-apache

RUN a2enmod rewrite
#RUN mkdir -p /etc/apache2/ssl
#RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

#COPY ./ssl/*.pem /etc/apache2/ssl/
#COPY ./apache/000-default.conf /etc/apache2/sites-available/000-default.conf

COPY . /var/www/html

EXPOSE 80
EXPOSE 443
