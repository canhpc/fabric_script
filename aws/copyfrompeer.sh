#!/bin/sh
#
source env.sh

echo 'Copying mychannel.block from '$REMOTE_HOST
rsync $REMOTE_HOST:$FABRIC_CFG_PATH/$CHANNEL_BLOCK_FILE ./channel-artifacts/$CHANNEL_BLOCK_FILE


