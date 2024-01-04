#! /bin/bash

composer create-project laravel/laravel .
git clone https://github.com/MohammadShabaniSBU/laravel-installer temp

mkdir .docker

cp temp/docker/docker-compose.yml .
cp temp/docker/run .
cp temp/docker/supervisord.conf .docker/

composer require league/flysystem-aws-s3-v3
composer require laravel/octane
composer require laravel/telescope

php artisan telescope:install

yarn add chokidar

