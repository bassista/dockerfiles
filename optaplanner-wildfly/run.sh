#!/bin/bash

echo "Running OptaPlanner and exposing 8080 to host"
echo "Got to http://192.168.99.100:8080/optaplanner-webexamples-6.4.0.Final"

docker run -p 8080:8080 bibryam/optaplanner-webexamples:6.4

# docker run -i -P -t bibryam/optaplanner-webexamples /bin/bash
# docker run -it --rm -p 8080:8080
 
