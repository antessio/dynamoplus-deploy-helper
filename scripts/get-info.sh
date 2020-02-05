#!/bin/bash
cd /app/dynamoplus/serverless
sls info > /tmp/info
info=/tmp/info
stage=$(cat $info | sed -n -e 's/^stage: \(.*\)/\1/p' )
region=$(cat $info | sed -n -e 's/^region: \(.*\)/\1/p')
service=$(cat $info | sed -n -e 's/^service: \(.*\)/\1/p')

name="$stage-$service"

id=$(aws apigateway get-rest-apis | jq -r --arg name $name '.items[] | select (.name==$name) | .id')
host=$(echo "<id>.execute-api.<region>.amazonaws.com" | sed "s/<id>/$id/g" | sed "s/<region>/$region/g")
echo "{\"host\": \"$host\", \"service_name\":\"$service\", \"region\": \"$region\",\"stage\":\"$stage\"}"