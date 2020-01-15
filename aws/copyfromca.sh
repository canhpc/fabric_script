#!/bin/sh
#
REMOTE_HOST=aws6
FABRIC_CFG_PATH='/home/ubuntu/workspace/fabric-ca-server'

echo 'Copying ca material from '$REMOTE_HOST
rsync -r $REMOTE_HOST:$FABRIC_CFG_PATH/ ./ca-material/


