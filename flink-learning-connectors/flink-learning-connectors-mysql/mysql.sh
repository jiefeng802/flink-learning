#!/bin/sh

echo "Running the migration scripts..."

echo "docker-compose up -d"
docker-compose up -d

docker exec -it mysql /bin/bash

mysql -uroot -proot --default-character-set=utf8

create database test character set utf8

docker cp /mydata/mall.sql mysql:/

use test;

source /test.sql;

#grant all privileges on *.* to 'reader' @'%' identified by '123456';

# Final message
echo "Navigate to localhost:3000 in your browser to access the app."
