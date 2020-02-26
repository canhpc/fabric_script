#!/bin/sh
export PATH=/home/ubuntu/workspace/fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=/home/ubuntu/workspace/fabric-workdir
export CORE_PEER_LOCALMSPID=Org2MSP
export CORE_PEER_MSPCONFIGPATH=crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp


echo listing channel peer has joined:
peer channel list