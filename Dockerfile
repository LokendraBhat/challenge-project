# Base Image include Debian's Apache httpd in conjuction with PHP
FROM php:7.2-apache

# Copy whole application files
COPY ./php-hello-world/* /var/www/html

# Setting working directory
WORKDIR /var/www/html

# Installs necessary tools and dependencies using composer
RUN apt-get update && \
apt-get install -y unzip && \
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
composer install --no-dev --optimize-autoloader && \
apt-get remove -y unzip && \
apt-get autoremove -y && \
rm -rf /var/lib/apt/lists/*

# Expose port 80
EXPOSE 80

# Command to run Apache when the container starts
CMD ["apache2-foreground"]


