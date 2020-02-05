#!/bin/bash
/app/scripts/setup.sh
cd /app/dynamoplus/serverless
export PYTHONPATH=/app/:$PYTHONPATH
sls deploy 
/app/scripts/get-info.sh > info.json