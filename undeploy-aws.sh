#!/bin/bash
docker run --rm  \
--name 'dynamoplus-test' \
-e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
-e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
--workdir '/app' --entrypoint './scripts/undeploy.sh' dynamoplus-serverless