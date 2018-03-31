#!/bin/bash

cd inginious-base/
./build

cd ../inginious-uwsgi
./build

cd ../inginious-backend
./build

cd ../inginious-agent-docker
./build

cd ../inginious-agent-mcq
./build

docker images | grep --color=always ^inginious-
