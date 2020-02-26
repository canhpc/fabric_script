#!/usr/bin/env bash
#
export FABRIC_CFG_PATH='/home/ubuntu/workspace/fabric'
export CHANNEL_NAME="mychannel" 
export CHANNEL_BLOCK_FILE=${CHANNEL_NAME}.block

#rsync -r ./orderer.yaml $REMOTE_HOST:${FABRIC_CFG_PATH}/orderer.yaml
