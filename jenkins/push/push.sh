#!/bin/bash

echo "***********************"
echo "*******PUSH IMAGE******"
echo "***********************"

IMAGE=app
echo "*******LOGGING to docker********"

docker login -u chsunny548 -p $PASS

echo "***********Tagging image***********"
docker tag $IMAGE:$BUILD_TAG chsunny548/$IMAGE:$BUILD_TAG

echo "***********Pushing image************"
docker push chsunny548/$IMAGE:$BUILD_TAG
