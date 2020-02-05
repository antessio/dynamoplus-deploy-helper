#!/bin/bash
cd /app/dynamoplus/serverless
export PYTHONPATH=/app/:$PYTHONPATH
sls remove

service_name=$(cat ./info.json | jq -r '.service_name')
stage=$(cat ./info.json | jq -r '.stage')
aws dynamodb delete-table --table-name "$service_name-$stage-domain"
aws dynamodb delete-table --table-name "$service_name-$stage-common"
