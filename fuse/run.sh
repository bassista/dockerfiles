#!/bin/bash

echo "Running Fuse and exposing 22 8101 8181 44444 1099 61616 to host"
docker run -p 8101:8101 -p 8181:8181 -p 44444:44444 -p 1099:1099 -p 61616:61616 -p 1022:22 bibryam/fuse

# docker run -i -P -t bibryam/fuse /bin/bash

 
