#!/bin/bash

docker stop $(docker ps -q)
docker rm $(docker ps -qa)
docker rmi $(docker images -q)