#!/bin/bash

echo "Running eap-bpms and exposing 8001 8080 9418 9990 9999 to host"
docker run -p 8001:8001 -p 8080:8080 -p 9418:9418 -p 9990:9990 -p 9999:9999 -p 5445:5445 -h `hostname` bibryam/eap-bpms
