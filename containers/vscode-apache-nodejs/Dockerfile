ARG VARIANT="focal"
FROM mharj/vscode-base
ENV DEBIAN_FRONTEND=noninteractive
ARG NODE_VERSION=16
RUN apt-get update && \
    apt-get install -y apache2 && \
    a2enmod rewrite && \
    mkdir -p /etc/apt/keyrings && \
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg && \
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_VERSION.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list && \
    apt-get update && \
    apt-get install -y nodejs && \
    usermod -a -G www-data vscode && \
    apt-get clean -y && rm -rf /var/lib/apt/lists/*
COPY containers/vscode-apache-nodejs/000-default.conf /etc/apache2/sites-available/000-default.conf
