FROM php:8.4-apache

# Install PHP extensions for MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite (optional, but common for PHP apps)
RUN a2enmod rewrite

# Copy any custom php.ini if needed (uncomment if you have one)
# COPY php.ini /usr/local/etc/php/

# Set working directory
WORKDIR /var/www/html
