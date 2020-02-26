#!/bin/sh

if [ $# -eq 0 ]; then
    echo "No Org Number"
    exit 1
fi


MSPID="Org$1MSP"
ORG_NAME="org$1"
CHANNEL_NAME="mychannel" 

export PATH=/home/ubuntu/workspace/fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=/home/ubuntu/workspace/fabric-workdir
export CORE_PEER_LOCALMSPID=$MSPID
export CORE_PEER_MSPCONFIGPATH=crypto-config/peerOrganizations/$ORG_NAME.example.com/users/Admin@$ORG_NAME.example.com/msp

cd $FABRIC_CFG_PATH
peer channel join -b $CHANNEL_NAME.block

echo listing channel peer has joined:
peer channel list