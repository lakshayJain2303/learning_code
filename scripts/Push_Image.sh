#!/bin/bash
docker tag hello-world:$1 lakshayjain/hello-world:$1
docker login
docker push lakshayjain/hello-world:$1
docker rmi -f hello-world:$1 lakshayjain/hello-world:$1

