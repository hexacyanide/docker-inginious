#!/bin/bash

cd inginious-base/
./build

cd ../inginious-uwsgi
./build

cd ../inginious-backend
./build

cd ../inginious-agent-docker
./build

docker images | grep --color=always ^inginious-
