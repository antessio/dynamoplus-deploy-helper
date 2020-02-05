#!/bin/bash

source check_aws.sh

docker run --rm  \
--name 'dynamoplus-test' \
-e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
-e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
-e ROOT_PASSWORD=$ROOT_PASSWORD \
-e SERVICE_NAME=$SERVICE_NAME \
-v $PWD/dynamoplus:/app/dynamoplus \
--workdir '/app' --entrypoint './scripts/setup.sh && ./scripts/deploy.sh' dynamoplus-serverless