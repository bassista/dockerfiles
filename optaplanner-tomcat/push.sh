#!/bin/bash

echo "Pushing image bibryam/optaplanner-webexamples"

docker login
docker push bibryam/optaplanner-webexamples

echo "Pushing done"
