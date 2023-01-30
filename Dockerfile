FROM php:8.1-fpm
# Install PHP and composer dependencies
RUN apt-get update && apt-get install -y 
    
RUN pecl install xdebug
# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install pdo_mysql
# Install composer and nodejs
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get install -y nodejs python3-pip
RUN apt-get update
RUN apt-get install -y mysql\*
