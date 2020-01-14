export PATH=$GOPATH/src/github.com/hyperledger/fabric/build/bin:${PWD}/../bin:/home/medium/fabric-workdir:$PATH
export FABRIC_CFG_PATH=/home/medium/fabric-workdir
export CHANNEL_NAME=mychannel

ssh medium@orderer0 'bash -s' < orderer0.sh