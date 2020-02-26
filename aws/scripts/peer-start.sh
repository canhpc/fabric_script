#!/bin/sh
#export PATH=/home/ubuntu/workspace/fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=/home/ubuntu/workspace/fabric
export FABRIC_LOGGING_SPEC=info
cd $FABRIC_CFG_PATH
nohup peer node start &