#!/bin/bash

docker stop flask
docker rm flask
docker run --name flask -it -d -p 8080:8080 $(docker build -q .)
