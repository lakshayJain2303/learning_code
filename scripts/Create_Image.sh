#!/bin/bash

sudo yes | cp  /var/lib/jenkins/workspace/Pipeline_Demo/learning_code/index.html /opt/jenkins_data/index.html

sudo docker build -t hello-world:$1 /opt/jenkins_data/
