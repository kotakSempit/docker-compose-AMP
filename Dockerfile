FROM php:7.2.2-apache
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer
RUN apt-get update && apt-get install -y zlib1g-dev
RUN docker-php-ext-install zip
RUN a2enmod rewrite
RUN service apache2 restart