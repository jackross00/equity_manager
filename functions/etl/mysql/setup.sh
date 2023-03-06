#!/bin/bash
set -e
service mysql start
mysql -uroot -e "CREATE USER 'equity'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';GRANT ALL ON *.* to 'equity'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';FLUSH PRIVILEGES;"
mysql -uroot < functions/etl/mysql/create_databases.sql
service mysql stop