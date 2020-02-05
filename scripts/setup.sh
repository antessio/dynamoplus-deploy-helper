#!/bin/bash

cd /app/dynamoplus/serverless

echo "setting secrets"
if [[ -z "${ROOT_PASSWORD}" ]]; then
  
  DYNAMOPLUS_ROOT_PASSWORD=$(python /app/scripts/random_string.py)
else
  DYNAMOPLUS_ROOT_PASSWORD="${ROOT_PASSWORD}"
fi
#echo "root password: $DYNAMOPLUS_ROOT_PASSWORD"
if [[ -z "${SERVICE_NAME}" ]]; then
  
  DYNAMOPLUS_SERVICE_NAME="dynamoplus-test-$(python /app/scripts/random_string.py)"
else
  DYNAMOPLUS_SERVICE_NAME="${SERVICE_NAME}"
fi

echo "service name: $DYNAMOPLUS_SERVICE_NAME"

sed "s/passwordtochangeinproduction/$DYNAMOPLUS_ROOT_PASSWORD/g" secrets-example.json > secrets.json
sed -i "s/service: dynamoplus/service: $DYNAMOPLUS_SERVICE_NAME/g" serverless.yml
sed -i 's/dockerizePip: true/dockerizePip: false/g' serverless.yml
