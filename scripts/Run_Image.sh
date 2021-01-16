#!/bin/bash

check=$( docker ps -q demo_app )

if [[ -n "$check" ]]; then
   docker run -itd --name demo_app -p 80:80 lakshayjain/hello-world:$1
else
   docker rm -f demo_app
   docker run -itd --name demo_app -p 80:80 lakshayjain/hello-world:$1
fi
