ARG VARIANT="focal"
FROM mharj/vscode-base
ENV DEBIAN_FRONTEND=noninteractive
ARG NODE_VER=12
RUN apt-get update && \
    apt-get install -y apache2 && \
    a2enmod rewrite && \
    curl -sL https://deb.nodesource.com/setup_${NODE_VER}.x | bash && \
    apt-get update && \
    apt-get install -y nodejs && \
    usermod -a -G www-data vscode && \
    apt-get clean -y && rm -rf /var/lib/apt/lists/*
COPY containers/vscode-apache-nodejs/000-default.conf /etc/apache2/sites-available/000-default.conf
