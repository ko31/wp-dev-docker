#!/bin/bash

docker-compose run --rm cli wp "$@"
#docker-compose exec --user www-data phpfpm wp "$@"
#docker-compose run --rm db bash -c 'exec mysqldump -h db -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE"' > wordpress.sql
