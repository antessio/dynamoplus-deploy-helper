#!/bin/bash


# echo "Service name (leave empty for default random)"
# read SERVICE_NAME
# echo "Root password (leave empty for randomly generated, not raccomended)"
# read -s  ROOT_PASSWORD

docker run --rm  \
--name 'dynamoplus-test' \
-e ROOT_PASSWORD=$ROOT_PASSWORD \
-e SERVICE_NAME=$SERVICE_NAME \
-v $PWD/dynamoplus:/app/dynamoplus \
--workdir '/app' --entrypoint './scripts/setup.sh' dynamoplus-serverless