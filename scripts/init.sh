#!/bin/bash
branch_name=$1
cd /app
echo "Downloading dynamolpus"
git clone https://github.com/antessio/dynamoplus.git dynamoplus
cd dynamoplus
git checkout $branch_name
cd serverless
echo "installing python dependencies"
pip install -r requirements.txt
#pip freeze > requirements.txt
echo "installing node dependencies"
npm install
cp secrets-example.json secrets.json
cat secrets.json
