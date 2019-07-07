#!/bin/bash

echo "********************************"
echo "*******Building JAR*************"
echo "********************************"

docker container run --rm -v /home/jenkins/hello/pipeline/java-app:/app -v /root/.m2/:/root/.m2 -w /app maven:3-alpine "$@"
