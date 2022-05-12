# build dev containers
```bash
docker pull ubuntu:focal
docker build -t mharj/vscode-base -f containers/vscode-base/Dockerfile .
docker push mharj/vscode-base
docker build -t mharj/vscode-apache-nodejs -f containers/vscode-apache-nodejs/Dockerfile .
docker push mharj/vscode-apache-nodejs
docker build -t mharj/vscode-php:php-7.1 -f containers/vscode-php/7.1/Dockerfile .
docker push mharj/vscode-php:php-7.1
docker build -t mharj/vscode-php:php-7.4 -f containers/vscode-php/7.4/Dockerfile .
docker push mharj/vscode-php:php-7.4
docker build -t mharj/vscode-php:php-8.1 -f containers/vscode-php/8.1/Dockerfile .
docker push mharj/vscode-php:php-8.1
```