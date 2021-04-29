#!/bin/bash

mkdir src

docker container run -d --name containerlaravel -p 8085:80 -v ${PWD}/src:/var/www/html imagemlaravel

docker exec -u 1000 containerlaravel bash -c "composer create-project --prefer-dist laravel/laravel ."