#!/bin/bash

if [ ! -d "dynamoplus" ]
then
    echo "Downloading dynamolpus"
    git clone https://github.com/antessio/dynamoplus.git dynamoplus
    git checkout develop
fi
echo "Create secrets"
cd dynamoplus/serverless 
cp secrets-example.json secrets.json
echo "Building the dynamoplus serverless image"
docker build . -t dynamoplus-serverless