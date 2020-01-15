#!/bin/sh
#
REMOTE_HOST=aws1
FABRIC_CFG_PATH='/home/ubuntu/workspace/fabric-workdir'

echo 'Copying to' $REMOTE_HOST
ssh $REMOTE_HOST 'bash -s' < ./remote-bash/common-init.sh
sleep 1s
rsync -r ./orderer.yaml $REMOTE_HOST:$FABRIC_CFG_PATH/orderer.yaml
rsync -r ./channel-artifacts/ $REMOTE_HOST:$FABRIC_CFG_PATH/channel-artifacts/
rsync -r ./crypto-config/ $REMOTE_HOST:$FABRIC_CFG_PATH/crypto-config/
rsync -r ./scripts/ $REMOTE_HOST:$FABRIC_CFG_PATH/scripts/
