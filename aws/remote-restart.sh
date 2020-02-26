#!/bin/bash

ssh aws1 'bash -s' < ./scripts/orderer.sh
#ssh aws1 'tail ./workspace/fabric-workdir/nohup.out'

ssh aws2 'bash -s' ./remote-bash/peer-start.sh
ssh aws3 'bash -s' ./remote-bash/peer-start.sh
sleep 3s

ssh aws2 'bash -s' ./remote-bash/peer-create-channel.sh




