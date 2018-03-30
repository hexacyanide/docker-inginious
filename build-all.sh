#!/bin/bash

cd inginious-base/
./build

cd ../inginious-backend
./build

cd ../inginious-agent-docker
./build
