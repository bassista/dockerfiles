#!/bin/bash

[ "1" != $(ls -la  | grep .zip | wc -l) ] && echo "ERROR: place fuse archive in the current folder before building images" && exit -1;

echo "Building image fuse"
docker build --rm -t bibryam/fuse .
echo "Build done"
