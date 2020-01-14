ssh client0 'bash -s' < ./remote-bash/common.sh
rsync -r ./core1.yaml client0:/home/medium/fabric-workdir/core.yaml
ssh client0 'mkdir -p /home/medium/fabric-workdir/msp/peer'
#rsync -r ./crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/msp/ client0:/home/medium/fabric-workdir/msp/peer/
rsync -r ./crypto-config/peerOrganizations/org1.example.com/users/ client0:/home/medium/fabric-workdir/msp/users/
rsync -r ./config/ client0:/home/medium/fabric-workdir/configtx/