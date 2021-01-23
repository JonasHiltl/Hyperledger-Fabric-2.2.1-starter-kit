#!/bin/bash

# remove the old materials
sudo rm -fr ~/mount/network/organizations/ordererOrganizations/*
sudo rm -fr ~/mount/network/organizations/peerOrganizations/*
sudo rm -fr ~/mount/network/system-genesis-block/*

pushd ~/mount/network

#deploy ca's
pushd ~/mount/network/docker
docker-compose -f docker-compose-ca.yaml up -d
popd

sleep 10

# generate crypto materials
pushd ~/mount/network
./organizations/fabric-ca/registerEnroll.sh

# set the cfg path
export FABRIC_CFG_PATH=$PWD/configtx/

# create the genesis block
configtxgen -profile TwoOrgsOrdererGenesis -channelID system-channel -outputBlock ./system-genesis-block/genesis.block 

popd