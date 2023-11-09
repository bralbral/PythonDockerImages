#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Please add path to prefect docker version"
    exit 1
fi

echo "Cleaning"
rm -rd ./prefect

echo "Exporting images"
mkdir ./prefect
docker save -o  ./prefect/prefect_ui_$1.tar prefecthq/ui:core-$1
docker save -o  ./prefect/prefect_server_$1.tar prefecthq/server:core-$1
docker save -o  ./prefect/prefect_apollo_$1.tar prefecthq/apollo:core-$1
docker save -o  ./prefect/postgres_11.tar postgres:11
docker save -o  ./prefect/hasura_2.1.1.tar hasura/graphql-engine:v2.1.1

echo "Archiving"
zip -r prefect-$1.zip ./prefect/*
