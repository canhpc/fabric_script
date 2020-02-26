#!/bin/sh
#

REMOTE_HOST=vhost3
REMOTE_BIN_DIR=/home/ubuntu/go/bin

rsync $GOPATH/bin/orderer $REMOTE_HOST:${REMOTE_BIN_DIR}/orderer
rsync $GOPATH/bin/peer $REMOTE_HOST:${REMOTE_BIN_DIR}/peer


