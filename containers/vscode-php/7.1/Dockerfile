ARG NODE_VERSION=latest
FROM mharj/vscode-apache-nodejs:${NODE_VERSION}
ARG PHP_VER=7.1
RUN apt-get update && \
    add-apt-repository -y ppa:ondrej/php && \
    apt-get update && \
    apt-get install -y php${PHP_VER} php${PHP_VER}-opcache \
    libapache2-mod-php${PHP_VER} php${PHP_VER}-mcrypt php${PHP_VER}-mbstring php${PHP_VER}-mysql php${PHP_VER}-curl php${PHP_VER}-apcu \
    php${PHP_VER}-intl php${PHP_VER}-xmlrpc php${PHP_VER}-soap php${PHP_VER}-gd php${PHP_VER}-xml php${PHP_VER}-zip && \
    apt-get clean -y && rm -rf /var/lib/apt/lists/*
