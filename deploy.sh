#!/bin/bash

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 584294315145.dkr.ecr.us-east-1.amazonaws.com

docker rmi -f 584294315145.dkr.ecr.us-east-1.amazonaws.com/github-poc:latest
docker pull 584294315145.dkr.ecr.us-east-1.amazonaws.com/github-poc:latest
