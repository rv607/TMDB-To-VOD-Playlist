FROM php:8.2-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql \
 && a2enmod rewrite \
 && echo "ServerName localhost" >> /etc/apache2/apache2.conf
COPY . /var/www/html/
RUN chmod -R 777 /var/www/html
EXPOSE 80
