#!/bin/bash
source check_aws.sh

docker run --rm  \
--name 'dynamoplus-test' \
-e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
-e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
-v $PWD/dynamoplus:/app/dynamoplus \
--workdir '/app' --entrypoint '/app/scripts/get-info.sh' dynamoplus-serverless