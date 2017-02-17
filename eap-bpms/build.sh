#!/bin/bash

[ "2" != $(ls -la  | grep .zip | wc -l) ] && echo "ERROR: place eap and bpms archives in the current folder before building images" && exit -1;

echo "Building image eap-bpms"
docker build --rm -t bibryam/eap-bpms .
echo "Build done"
