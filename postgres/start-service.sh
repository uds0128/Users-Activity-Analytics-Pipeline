#!/bin/bash

pg_ctl start 
psql -U postgres -tc "SELECT 1 FROM pg_database WHERE datname = 'main'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE main"
psql -c "ALTER USER postgres WITH ENCRYPTED PASSWORD 'mysecurepassword';"

while [ True ]
do
    sleep 60;
done