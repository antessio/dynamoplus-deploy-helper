#!/bin/bash
cd /app/dynamoplus/serverless
export PYTHONPATH=/app/:$PYTHONPATH
sls deploy 
/app/scripts/get-info.sh > info.json