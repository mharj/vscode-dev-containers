ARG VARIANT="focal"
ARG NODE_VER=12
FROM mharj-vscode-${VARIANT}-base
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y apache2 && \
    a2enmod rewrite && \
    curl -sL https://deb.nodesource.com/setup_${NODE_VER}.x | bash && \
    apt-get update && \
    apt-get install -y nodejs && \
    apt-get clean -y && rm -rf /var/lib/apt/lists/*
