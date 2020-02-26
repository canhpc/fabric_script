#!/bin/bash
ssh vhost1 'killall -9 orderer'
ssh vhost2 'killall -9 peer'
ssh vhost3 'killall -9 peer'
ssh vhost2 'rm -rf workspace/fabric-workdir/production/ledger/'
ssh vhost3 'rm -rf workspace/fabric-workdir/production/ledger/'



