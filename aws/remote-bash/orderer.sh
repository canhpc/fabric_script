#!/bin/sh
killall -9 orderer
export PATH=/home/ubuntu/workspace/fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=/home/ubuntu/workspace/fabric
export FABRIC_LOGGING_SPEC=info
cd $FABRIC_CFG_PATH
echo $PWD

sleep 1s
rm -f orderer.log 
orderer > orderer.log 2>&1 &