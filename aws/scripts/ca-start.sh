#!/bin/sh

ORG='org2.example.com'
export FABRIC_CA_HOME=/home/ubuntu/workspace/fabric-ca-server
echo 'fabric server work dir: '$FABRIC_CA_HOME

export FABRIC_CA_SERVER_CA_NAME=ca.$ORG
export FABRIC_CA_SERVER_CA_CERTFILE=$FABRIC_CA_HOME/ca.$ORG-cert.pem
export FABRIC_CA_SERVER_CA_KEYFILE=$FABRIC_CA_HOME/$(cd $FABRIC_CA_HOME && ls *_sk)
export FABRIC_CA_SERVER_TLS_ENABLED=false
echo 'ca name: '$FABRIC_CA_SERVER_CA_NAME
echo 'ca key file:' $FABRIC_CA_SERVER_CA_KEYFILE

cd $FABRIC_CA_HOME
nohup fabric-ca-server start -b admin:adminpw -d &