#!/bin/bash

[ "2" != $(ls -la  | grep .zip | wc -l) ] && echo "ERROR: place eap and brms archives in the current folder before building images" && exit -1;

echo "Building image eap-brms"
docker build --rm -t bibryam/eap-brms .
echo "Build done"
