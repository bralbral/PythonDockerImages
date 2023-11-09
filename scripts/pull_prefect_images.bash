#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Please add path to prefect docker version"
    exit 1
fi

echo "Pulling"

docker pull prefecthq/ui:core-$1
docker pull  prefecthq/server:core-$1
docker pull  prefecthq/apollo:core-$1
docker pull  postgres:11
docker pull  hasura/graphql-engine:v2.1.1