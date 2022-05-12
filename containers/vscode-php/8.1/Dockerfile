FROM mharj/vscode-apache-nodejs
ARG PHP_VER=8.1
RUN add-apt-repository -y ppa:ondrej/php && \
    apt-get update && \
    apt-get install -y composer mariadb-client php${PHP_VER}-mcrypt libapache2-mod-php${PHP_VER} php${PHP_VER}-opcache \
    php${PHP_VER}-mbstring php${PHP_VER}-xml php${PHP_VER}-curl \
    php${PHP_VER}-mysql php${PHP_VER}-intl php${PHP_VER}-zip php${PHP_VER}-gd && \
    apt-get clean -y && rm -rf /var/lib/apt/lists/*
