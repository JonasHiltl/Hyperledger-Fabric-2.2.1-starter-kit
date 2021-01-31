#!/bin/bash

pushd ~/mount/network/docker

docker-compose -f ./docker-compose-test-net.yaml -f ./docker-compose-couch.yaml -f ./docker-compose-ca.yaml up -d 

popd
