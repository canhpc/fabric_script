
export CORE_PEER_ID=peer1
export FABRIC_LOGGING_SPEC=info
export CORE_CHAINCODE_LOGGING_LEVEL=info
export CORE_PEER_LOCALMSPID=Org1MSP
export CORE_PEER_MSPCONFIGPATH=/home/medium/fabric-workdir/msp/peer/
export CORE_PEER_ADDRESS=peer1:7051

export PATH=~/fabric-samples/bin:$GOPATH/src/github.com/hyperledger/fabric/build/bin:${PWD}/../bin:/home/medium/fabric-workdir:$PATH
export FABRIC_CFG_PATH=/home/medium/fabric-workdir
export CHANNEL_NAME=mychannel
#eer chaincode install --help

peer chaincode install \
    -n fabcar \
    -v 1.4 \
    -p "~/fabric-samples/chaincode/fabcar/go" \
    -l "golang"