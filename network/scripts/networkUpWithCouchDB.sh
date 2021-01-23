#!/bin/bash

pushd ~/mount/network/docker

docker-compose -f ./docker-compose-test-net.yaml -f ./docker-compose-couch.yaml up -d 

popd