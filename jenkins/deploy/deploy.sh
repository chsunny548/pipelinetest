#!/bin/bash
echo app > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /home/jenkins/prod /tmp/.auth jenkins@192.168.0.57:/tmp/.auth
scp -i /home/jenkins/prod ./jenkins/deploy/publish.sh jenkins@192.168.0.57:/tmp/publish.sh

ssh -i /home/jenkins/prod jenkins@192.168.0.57 "/tmp/publish.sh"
