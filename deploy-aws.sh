#!/bin/bash

source check_aws.sh


echo "Service name (leave empty for default random)"
read SERVICE_NAME
echo "Root password (leave empty for randomly generated, not raccomended)"
read -s  ROOT_PASSWORD

docker run --rm  \
--name 'dynamoplus-test' \
-e AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION \
-e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
-e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
-e ROOT_PASSWORD=$ROOT_PASSWORD \
-e SERVICE_NAME=$SERVICE_NAME \
--workdir '/app' --entrypoint './scripts/deploy.sh' dynamoplus-serverless