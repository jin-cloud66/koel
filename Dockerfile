FROM bitnami/laravel:8

WORKDIR /app

RUN apt-get update -qq \
    && apt-get install -y git python2 build-essential 

COPY . /app
RUN composer install
