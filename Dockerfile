# Use an official Python runtime as a parent image
FROM  mysql:5.7.13

ENV MYSQL_ROOT_PASSWORD mysqlpassword 
ENV MYSQL_ROOT_HOST 0.0.0.0
COPY ./functions/etl/mysql/create_databases.sql ./functions/etl/mysql/create_databases.sql
COPY ./functions/etl/mysql/setup.sh ./functions/etl/mysql/setup.sh

EXPOSE 3306

RUN ./functions/etl/mysql/setup.sh