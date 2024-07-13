FROM php:8.3-zts-bullseye
RUN apt update
RUN apt install git -y
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
WORKDIR /app
CMD [ "php", "yii", "serve", "0.0.0.0", "--port", "8080" ]