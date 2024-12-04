# Laravel Dockerized Project

This repository contains a Dockerized Laravel application setup. It uses `docker-compose` to run the necessary services such as Nginx, PHP, MySQL, Composer, Artisan, and NPM in a containerized environment.

## Requirements and dependencies

- Docker
- Docker Compose

## Project Structure

- `docker-compose.yml` – The Docker Compose configuration file that defines the services.
- `nginx/nginx.conf` – Custom Nginx configuration file.

## Services Overview

### 1. Nginx (Server)
- **Image**: `nginx:stable-alpine`
- **Ports**: Maps port `80` inside the container to port `8000` on your machine.
- **Volumes**: The Nginx config file from `./nginx/nginx.conf` is mounted inside the container at `/etc/nginx/nginx.conf`.

This service serves the Laravel application to port `8000` of your local machine.

### 2. PHP
- This service will contain the PHP-FPM container, responsible for running the PHP code for your Laravel application. (Implementation required).

### 3. MySQL
- This service will run the MySQL container to store and manage the application's database. (Implementation required).

### 4. Composer
- A service for managing PHP dependencies using Composer. (Implementation required).

### 5. Artisan
- A service for running Laravel’s Artisan commands within the container. (Implementation required).

### 6. NPM
- A service for running NPM 
