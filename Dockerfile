FROM python:3.7


# update apt-get
RUN apt-get update -y && apt-get upgrade -y

# Install Nodejs
RUN apt-get install -y npm nodejs

# install dev tool
RUN apt-get install -y vim git tree jq

# install aws-cli
RUN pip install awscli

# install serverless framework
RUN npm install -g serverless

# change work directory
RUN mkdir -p /app

RUN nodejs --version
RUN serverless --version
ADD ./scripts /app/scripts

#ADD ./dynamoplus /app/dynamoplus
RUN chmod -R 777 /app/*
RUN /app/scripts/init.sh
RUN /app/scripts/setup.sh
WORKDIR /app