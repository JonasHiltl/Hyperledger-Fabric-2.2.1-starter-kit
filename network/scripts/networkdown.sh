#!/bin/bash

pushd ~/mount/network/docker

docker-compose -f ./docker-compose-test-net.yaml down
docker-compose -f ./docker-compose-ca.yaml down
docker-compose -f ./docker-compose-couch.yaml down

docker stop couchdb1
docker stop couchdb0

docker volume prune -f

popd
