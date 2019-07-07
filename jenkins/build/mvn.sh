#!/bin/bash

echo "********************************"
echo "*******Building JAR*************"
echo "********************************"
WORKSPACE=/home/jenkins/hello/jenkins_home/workspace/pipeline-maven-proj
docker container run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2 -w /app maven:3-alpine "$@"
