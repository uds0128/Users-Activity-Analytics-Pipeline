#!/bin/bash

action=$1

if [[ "$action" == "start" ]]
then
    docker compose up
elif [[ "$action" == "stop" ]]
then
    docker compose down --rmi all -v
fi