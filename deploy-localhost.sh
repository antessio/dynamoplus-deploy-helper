docker run --rm  \
--name 'dynamoplus-test' \
-e ROOT_PASSWORD=$ROOT_PASSWORD \
-e SERVICE_NAME=$SERVICE_NAME \
-v $PWD/dynamoplus:/app/dynamoplus \
--workdir '/app' --entrypoint './scripts/run-localhost.sh' dynamoplus-serverless