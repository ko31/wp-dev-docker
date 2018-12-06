#!/bin/bash

docker-compose run --rm db sh -c 'exec mysqldump -u "$MYSQL_USER" -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE"' > wordpress.sql
#docker-compose exec db 'mysqldump -u "$MYSQL_USER" -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE"' > wordpress.sql
#docker-compose exec db mysqldump -u wordpress -pwordpress wordpress > wordpress.sql
exit

SHELL_DIR=$(cd $(dirname $0); pwd)

SQL_FILE="$SHELL_DIR/../data/wordpress.sql"

docker-compose run --rm db sh -c 'exec mysqldump -u "$MYSQL_USER" -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE"' > $SQL_FILE

#_os="`uname`"
#_now=$(date +"%m_%d_%Y")
#_file="wp-data/data_$_now.sql"
#docker-compose run --rm db sh -c 'exec mysqldump "$MYSQL_DATABASE" -uroot -p"$MYSQL_ROOT_PASSWORD"' > $_file
#if [[ $_os == "Darwin"* ]] ; then
#  sed -i '.bak' 1,1d $_file
#else
#  sed -i 1,1d $_file # Removes the password warning from the file
#fi
