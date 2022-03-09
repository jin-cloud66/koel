FROM bitnami/laravel:8.0.2

WORKDIR /app

RUN apt-get update -qq \
    && apt-get install -y git python2 build-essential 

COPY composer.json /app/composer.json
COPY composer.lock /app/composer.lock
RUN composer install
COPY . /app

