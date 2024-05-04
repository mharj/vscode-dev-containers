ARG NODE_VERSION=latest
FROM mharj/vscode-apache-nodejs:${NODE_VERSION}
ARG PHP_VER=7.4
RUN apt-get update && \
    apt-get install -y composer mariadb-client libmcrypt4 build-essential php-pear php-dev libmcrypt-dev php${PHP_VER} libapache2-mod-php${PHP_VER} php${PHP_VER}-opcache \
    php${PHP_VER}-json php${PHP_VER}-mbstring php${PHP_VER}-xml php${PHP_VER}-pdo php${PHP_VER}-curl php${PHP_VER}-apcu \
    php${PHP_VER}-json php${PHP_VER}-mysql php${PHP_VER}-intl php${PHP_VER}-zip php${PHP_VER}-gd && \
    pecl install mcrypt && \
    echo "extension=mcrypt.so" > /etc/php/7.4/cli/conf.d/99-mcrypt.ini && \
    echo "extension=mcrypt.so" > /etc/php/7.4/apache2/conf.d/99-mcrypt.ini && \
    apt-get remove -y php-pear php-dev libmcrypt-dev binutils binutils-common binutils-x86-64-linux-gnu build-essential cpp cpp-9 dpkg-dev fakeroot g++ g++-9 gcc gcc-9 gcc-9-base libalgorithm-diff-perl libalgorithm-diff-xs-perl \
    libalgorithm-merge-perl libasan5 libatomic1 libbinutils libc-dev-bin libc6-dev libcc1-0 libcrypt-dev libctf-nobfd0 libctf0 libdpkg-perl libfakeroot libfile-fcntllock-perl \
    libgcc-9-dev libgomp1 libisl22 libitm1 liblocale-gettext-perl liblsan0 libmpc3 libmpfr6 libquadmath0 libstdc++-9-dev libtsan0 libubsan1 linux-libc-dev make manpages manpages-dev && \
    apt-get clean -y && rm -rf /var/lib/apt/lists/*
