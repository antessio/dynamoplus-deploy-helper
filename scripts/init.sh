#!/bin/bash
cd /app
echo "Downloading dynamolpus"
git clone https://github.com/antessio/dynamoplus.git dynamoplus
cd dynamoplus
git checkout develop
cd serverless
echo "installing python dependencies"
pip install boto3
pip install jsonschema
pip freeze > requirements.txt
echo "installing node dependencies"
npm install