#!/bin/sh
#

#IMPORTANT
#need to replace remote host and config file 
REMOTE_HOST=aws7
FABRIC_CA_HOME='/home/ubuntu/workspace/fabric-ca-server'
ORG='org2.example.com'


echo 'Copying ca to' $REMOTE_HOST
ssh $REMOTE_HOST "mkdir -p $FABRIC_CA_HOME"
rsync -r ./crypto-config/peerOrganizations/$ORG/ca/ $REMOTE_HOST:$FABRIC_CA_HOME/
rsync -r ./scripts/ca-start.sh $REMOTE_HOST:$FABRIC_CA_HOME/ca-start.sh


