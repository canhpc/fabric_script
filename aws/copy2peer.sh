#!/bin/sh
#

#IMPORTANT
#need to replace remote host and config file 
REMOTE_HOST=aws5
CORE_CONFIG_FILE=peer2org2.yaml

FABRIC_CFG_PATH='/home/ubuntu/workspace/fabric-workdir'
CHANNEL_BLOCK_FILE=mychannel.block

echo 'Copying to' $REMOTE_HOST
ssh $REMOTE_HOST 'bash -s' < ./remote-bash/common-init.sh
sleep 1s

rsync ./$CORE_CONFIG_FILE $REMOTE_HOST:$FABRIC_CFG_PATH/core.yaml
rsync -r ./channel-artifacts/ $REMOTE_HOST:$FABRIC_CFG_PATH/channel-artifacts/
rsync -r ./crypto-config/ $REMOTE_HOST:$FABRIC_CFG_PATH/crypto-config/
rsync -r ./scripts/ $REMOTE_HOST:$FABRIC_CFG_PATH/scripts/

if test -f "./channel-artifacts/$CHANNEL_BLOCK_FILE"; then
    echo 'copy channel block file to remote host'
    rsync ./channel-artifacts/$CHANNEL_BLOCK_FILE $REMOTE_HOST:$FABRIC_CFG_PATH/$CHANNEL_BLOCK_FILE
fi

