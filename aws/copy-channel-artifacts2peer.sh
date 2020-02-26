#!/bin/sh

if [ $# -eq 0 ]; then
    echo "No Org Number"
    exit 1
fi

source env.sh

REMOTE_HOST=$1

echo 'Copying to' $REMOTE_HOST

rsync -r ./channel-artifacts/ $REMOTE_HOST:$FABRIC_CFG_PATH/channel-artifacts/
rsync -r ./scripts/ $REMOTE_HOST:$FABRIC_CFG_PATH/scripts/

if test -f "./channel-artifacts/$CHANNEL_BLOCK_FILE"; then
    echo 'copy channel block file to remote host'
    rsync ./channel-artifacts/$CHANNEL_BLOCK_FILE $REMOTE_HOST:$FABRIC_CFG_PATH/$CHANNEL_BLOCK_FILE
fi

