# Base Image include Debian's Apache httpd in conjuction with PHP
FROM php:apache

# Copy whole application files
COPY php-hello-world/. /var/www/html

# Setting working directory
WORKDIR /var/www/html

# Update the system and Installs necessary tools
RUN apt-get update && \
apt-get install -y unzip \
git 

# Install composer (reference: officail site getcomposer.com)
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
php composer-setup.php && \
php -r "unlink('composer-setup.php');"

## To make composer.phar execute from any dir uncomment this
#sudo mv composer.phar /usr/local/bin/composer

RUN composer install --ignore-platform-reqs

# Expose port 80
EXPOSE 80

# Command to run Apache when the container starts
CMD ["apache2-foreground"]


