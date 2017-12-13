#!/bin/bash

docker run --name some-mysql -d -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=my-secret-pw \
    -e MYSQL_DATABASE=dbname \
    mysql:5.7
