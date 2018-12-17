#!/bin/bash

docker-compose run --rm db bash -c 'exec mysql -h db -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE"' < wordpress.sql
