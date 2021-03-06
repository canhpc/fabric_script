#!/bin/sh
#
#source env.sh

REMOTE_HOST=aws3
FABRIC_CFG_PATH='/home/ubuntu/workspace/fabric'
CORE_CONFIG_FILE=peer1org2.yaml

echo 'Copying to' $REMOTE_HOST
ssh $REMOTE_HOST 'bash -s' < ./remote-bash/common-init.sh
sleep 1s

rsync ./$CORE_CONFIG_FILE $REMOTE_HOST:$FABRIC_CFG_PATH/core.yaml
rsync -r ./crypto-config/ $REMOTE_HOST:$FABRIC_CFG_PATH/crypto-config/
rsync -r ./channel-artifacts/ $REMOTE_HOST:$FABRIC_CFG_PATH/channel-artifacts/
rsync -r ./scripts/ $REMOTE_HOST:$FABRIC_CFG_PATH/scripts/

if test -f "./channel-artifacts/$CHANNEL_BLOCK_FILE"; then
    echo 'copy channel block file to remote host'
    rsync ./channel-artifacts/$CHANNEL_BLOCK_FILE $REMOTE_HOST:$FABRIC_CFG_PATH/$CHANNEL_BLOCK_FILE
fi

