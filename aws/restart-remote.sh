#!/bin/bash
#
# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
# Exit on first error, print all commands.
set -ev

# don't rewrite paths for Windows Git Bash users
export MSYS_NO_PATHCONV=1

# ssh fabric-ca 'bash -s' < ./remote-bash/common.sh
# rsync -r ./crypto-config/peerOrganizations/org1.example.com/ca fabric-ca:/home/medium/fabric-workdir/fabric-ca-server-config
# ssh fabric-ca 'bash -s' < ./remote-bash/fabric-ca.sh

#ssh orderer0 'bash -s' 'kill -9 $(pidof orderer)'
#ssh orderer0 'bash -s' < ./remote-bash/set-env.sh
#ssh orderer0 'bash -s' 'rm -rf /home/medium/fabric-workdir/production/*'
ssh orderer0 'bash -s' < ./remote-bash/orderer0.sh

# #ssh peer1 'bash -s' 'killall -9 peer'
# ssh peer1 'bash -s' < ./remote-bash/set-env.sh
# #ssh peer1 'bash -s' 'rm -rf /home/medium/fabric-workdir/ledger/*'
ssh peer1 'bash -s' < ./remote-bash/peer1-init.sh

# #ssh peer2 'bash -s' 'killall -9 peer'
# ssh peer2 'bash -s' < ./remote-bash/set-env.sh
# #ssh peer2 'bash -s' 'rm -rf /home/medium/fabric-workdir/ledger/*'
ssh peer2 'bash -s' < ./remote-bash/peer2-init.sh

# #ssh peer3 'bash -s' 'killall -9 peer'
# ssh peer3 'bash -s' < ./remote-bash/set-env.sh
# #ssh peer3 'bash -s' 'rm -rf /home/medium/fabric-workdir/ledger/*'
 ssh peer3 'bash -s' < ./remote-bash/peer3-init.sh

# wait for Hyperledger Fabric to start
# incase of errors when running later commands, issue export FABRIC_START_TIMEOUT=<larger number>
export FABRIC_START_TIMEOUT=20s
#echo ${FABRIC_START_TIMEOUT}
sleep ${FABRIC_START_TIMEOUT}

ssh peer1 'bash -s' < ./remote-bash/peer2-join.sh
#rsync peer1:/home/medium/fabric-workdir/mychannel.block configtx/mychannel.block
#rsync configtx/mychannel.block peer2:/home/medium/fabric-workdir/mychannel.block
#rsync configtx/mychannel.block peer3:/home/medium/fabric-workdir/mychannel.block
ssh peer2 'bash -s' < ./remote-bash/peer2-join.sh
ssh peer3 'bash -s' < ./remote-bash/peer2-join.sh
