## Dynamoplus deploy helper 

# Init
```bash

./init.sh
```

This will download dynamoplus and build the docker image. 



## Running on localhost with dynamolocal
```bash
docker-compose -f docker-compose-local -d

```

## Deploy AWS
```bash
# setting AWS credentials
export AWS_ACCESS_KEY_ID=<your-access-key> 
export AWS_SECRET_ACCESS_KEY=<your-secret>
./deploy-aws.sh
```


```bash
# setting AWS credentials
export AWS_ACCESS_KEY_ID=<your-access-key> 
export AWS_SECRET_ACCESS_KEY=<your-secret>
./undeploy-aws.sh
```
