#!/bin/sh

echo "Running the migration scripts..."

echo "docker-compose up -d"
#docker-compose up -d

echo exec -it mysql /bin/bash
docker exec -it mysql /bin/bash

echo -uroot -proot --default-character-set=utf8
mysql -uroot -proot --default-character-set=utf8

echo database test character set utf8
create database test character set utf8;

#docker cp /mydata/mall.sql mysql:/

use test;

#source /test.sql;

#grant all privileges on *.* to 'reader' @'%' identified by '123456';

# Final message
echo create test success!
