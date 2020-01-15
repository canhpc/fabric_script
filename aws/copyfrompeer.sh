#!/bin/sh
#
REMOTE_HOST=aws2
FABRIC_CFG_PATH='/home/ubuntu/workspace/fabric-workdir'

echo 'Copying mychannel.block from '$REMOTE_HOST
rsync $REMOTE_HOST:$FABRIC_CFG_PATH/mychannel.block ./channel-artifacts/mychannel.block


