#!/bin/bash
cd /app/dynamoplus/serverless
export PYTHONPATH=/app/:$PYTHONPATH
sls remove
info=$(/app/scripts/get-info.sh)
service_name=$(echo "$info" | jq -r '.service_name')
stage=$(echo "$info" | jq -r '.stage')
aws dynamodb delete-table --table-name "$service_name-$stage-domain"
aws dynamodb delete-table --table-name "$service_name-$stage-common"
