#!/bin/bash
#registryUrl=192.168.56.101:5000
imageName="192.168.56.101:5000/myweb:latest"
docker build . -t $imageName
docker push $imageName
docker stack deploy -c docker-compose.yml skyward
