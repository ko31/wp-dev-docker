#!/bin/bash

DUMP_FILE=wordpress.sql

docker-compose run --rm db bash -c 'exec mysqldump -h db -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE"' > $DUMP_FILE

HEAD=`head -1 $DUMP_FILE`
if [[ $HEAD =~ Warning ]] ;
then
	sed -i -e '1,1d' $DUMP_FILE
fi
