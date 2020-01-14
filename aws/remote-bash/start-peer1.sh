export PATH=$GOPATH/src/github.com/hyperledger/fabric/build/bin:${PWD}/../bin:/home/medium/fabric-workdir:$PATH
export FABRIC_CFG_PATH=/home/medium/fabric-workdir
export CHANNEL_NAME=mychannel

#ssh medium@peer1 'bash -s' < peer1-init.sh
#ssh medium@peer2 'bash -s' < peer2-init.sh
#ssh medium@peer3 'bash -s' < peer2-init.sh
#export FABRIC_START_TIMEOUT=2
#echo ${FABRIC_START_TIMEOUT}
#sleep ${FABRIC_START_TIMEOUT}

ssh medium@peer1 'bash -s' < peer1-join.sh
#ssh peer2 'bash -s' < ./remote-bash/peer2-join.sh
#ssh peer3 'bash -s' < ./remote-bash/peer2-join.sh