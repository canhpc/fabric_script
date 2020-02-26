#!/bin/sh

if [ $# -eq 0 ]; 
then
  echo "Channel name is missing, create channel using default name: mychannel"
  CHANNEL_NAME=mychannel   
else
  CHANNEL_NAME="$1"
  echo "Create channel with name: $CHANNEL_NAME"
fi

export PATH=/home/ubuntu/workspace/fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=/home/ubuntu/workspace/fabric
export FABRIC_LOGGING_SPEC=info
export CORE_PEER_LOCALMSPID=Org1MSP
export CORE_PEER_MSPCONFIGPATH=crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp

cd $FABRIC_CFG_PATH
peer channel create -o orderer.example.com:7050 -c $CHANNEL_NAME -f ./channel-artifacts/$CHANNEL_NAME.tx