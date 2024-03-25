#!/bin/bash

curr_dir=$(pwd)
cd $curr_dir/postgres
docker build -t postgreslocal:1 .

cd $curr_dir/user-micro-service
docker build -t usermcs:1 .
