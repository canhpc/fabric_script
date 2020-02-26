#!/bin/sh
export PATH=/home/ubuntu/workspace/fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=/home/ubuntu/workspace/fabric
export FABRIC_LOGGING_SPEC=info
cd $FABRIC_CFG_PATH

sleep 1s
rm -f peer.log 
peer node start > peer.log 2>&1 &
