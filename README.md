# WP Dev Docker

This is a Wordpress development environment with Docker and Docker Compose.

## Getting Started

1. `git clone https://github.com/ko31/wp-dev-docker.git <my-project-name>`
1. `cd <my-project-name>`
1. `docker-compose up -d`
1. Visit WordPress in your browser `http://localhost:8000`

## Usage

Create containers.

`docker-compose up -d`

Start containers.

`docker-compose start`

Stop containers.

`docker-compose stop`

Shutdown containers.

`docker-compose down`

Shutdown and cleanup containers.

`docker-compose down -v`

## Tools

### MailCatcher

`http://localhost:1080`

### Adminer

`http://localhost:8080`

## Shell commands

SSH into WordPress container.

`./bin/shell.sh`

Call WP-CLI command.

```
./bin/wp.sh <command>

# Display the WordPress version
./bin/wp.sh core version
```

Create database dump.

`./bin/export.sh`
