FROM yiisoftware/yii2-php:8.1-apache

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_18.x  | bash -
RUN apt-get -y install nodejs
RUN apt-get install -y autossh
RUN apt-get install -y systemd
RUN docker-php-ext-install sockets
RUN apt-get -y --no-install-recommends install g++ zlib1g-dev
RUN pecl install grpc
RUN docker-php-ext-enable grpc
