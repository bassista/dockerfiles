#!/bin/bash

echo "Pushing image bibryam/wildfly-optaplanner"

docker login
docker push bibryam/optaplanner-webexamples

echo "Pushing done"
