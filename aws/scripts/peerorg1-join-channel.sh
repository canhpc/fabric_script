#!/bin/sh
export PATH=/home/ubuntu/workspace/fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=/home/ubuntu/workspace/fabric-workdir
export CORE_PEER_LOCALMSPID=Org1MSP
export CORE_PEER_MSPCONFIGPATH=crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp

cd $FABRIC_CFG_PATH
peer channel join -b mychannel.block

echo listing channel peer has joined:
peer channel list