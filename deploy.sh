#!/bin/bash

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 781365762844.dkr.ecr.us-east-1.amazonaws.com

docker rmi -f 781365762844.dkr.ecr.us-east-1.amazonaws.com/githubaction-poc:latest

docker pull 781365762844.dkr.ecr.us-east-1.amazonaws.com/githubaction-poc:latest
