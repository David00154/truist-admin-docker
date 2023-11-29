M php:8.0-apache

RUN a2enmod rewrite
#RUN service apache2 restart

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y
#RUN mkdir -p /etc/apache2/ssl
#RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

#COPY ./ssl/*.pem /etc/apache2/ssl/
#COPY ./apache/000-default.conf /etc/apache2/sites-available/000-default.conf

COPY . /var/www/html
#RUN sed -i 's#try_files $uri $uri/ =404;#try_files $uri $uri/ $uri.html /$uri.php?$args;#g' /etc/nginx/sites-available/default.conf

EXPOSE 80
EXPOSE 443

