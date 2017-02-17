#!/bin/bash

#[ "1" != $(ls -la  | grep .war | wc -l) ] && wget http://central.maven.org/maven2/org/optaplanner/optaplanner-webexamples/6.2.0.Final/optaplanner-webexamples-6.2.0.Final.war;

#[ "1" != $(ls -la  | grep .war | wc -l) ] && echo "ERROR: place optaplanner-webexamples-VERSION.war archive in the current folder before building images" && exit -1;

echo "Building image OptaPlanner"

docker build --rm -t bibryam/optaplanner-webexamples:6.2 .
echo "Build done"
