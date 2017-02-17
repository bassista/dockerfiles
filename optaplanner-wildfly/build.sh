#!/bin/bash


IMAGE_NAME="bibryam/optaplanner-webexamples"

[ "1" != $(ls -la  | grep .war | wc -l) ] && wget http://central.maven.org/maven2/org/optaplanner/optaplanner-webexamples/6.4.0.Final/optaplanner-webexamples-6.4.0.Final.war;

[ "1" != $(ls -la  | grep .war | wc -l) ] && echo "ERROR: place optaplanner-webexamples-6.4.0.Final.war archive in the current folder before building images" && exit -1;

echo "Building OptaPlanner image"

docker build --rm -t $IMAGE_NAME:6.4 .
[ "0" != $(docker images | grep $IMAGE_NAME  | grep latest | wc -l) ] && ( docker rmi -f $IMAGE_NAME:latest )
docker tag $IMAGE_NAME:6.4 $IMAGE_NAME:latest

echo "Build done"

