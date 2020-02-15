#!/bin/bash

docker stop jenkins
docker rm jenkins
docker run --name jenkins -it -d -p 8085:8080 $(docker build -q .)
