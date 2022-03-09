FROM bitnami/laravel:9

WORKDIR /app

RUN apt-get update -qq \
    && apt-get install -y git python2 build-essential 

COPY . /app
RUN composer install
RUN git submodule update --init --recursive --remote
RUN cd resources/assets && yarn install
