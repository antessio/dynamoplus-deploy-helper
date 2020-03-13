#!/bin/bash
branch_name=$1
cd /app
echo "Downloading dynamolpus"
git clone https://github.com/antessio/dynamoplus.git dynamoplus
cd dynamoplus
target_branch=git rev-parse --verify --quiet $branch_name
if [ -z $target_branch ]
then
    echo "$target_branch doesn't exist checking out master"
    git checkout master
else
    git checkout $branch_name
fi
cd serverless
echo "installing python dependencies"
pip install -r requirements.txt
#pip freeze > requirements.txt
echo "installing node dependencies"
npm install
cp secrets-example.json secrets.json
cat secrets.json
