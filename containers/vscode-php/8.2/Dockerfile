ARG NODE_VERSION=latest
FROM mharj/vscode-apache-nodejs:${NODE_VERSION}
ARG PHP_VER=8.2
RUN add-apt-repository -y ppa:ondrej/php && \
    apt-get update && \
    apt-get install -y mariadb-client php${PHP_VER}-mcrypt libapache2-mod-php${PHP_VER} php${PHP_VER}-opcache php${PHP_VER}-bcmath \
    php${PHP_VER}-mbstring php${PHP_VER}-xml php${PHP_VER}-curl \
    php${PHP_VER}-mysql php${PHP_VER}-intl php${PHP_VER}-zip php${PHP_VER}-gd && \
    curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php && \
    php /tmp/composer-setup.php --install-dir=/usr/bin --filename=composer && \
    apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/composer-setup.php
