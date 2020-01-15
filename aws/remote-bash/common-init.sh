export GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
export PATH=/home/ubuntu/workspace/fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=/home/ubuntu/workspace/fabric-workdir
export CHANNEL_NAME=mychannel
cd ~
rm -rf $FABRIC_CFG_PATH
mkdir -p $FABRIC_CFG_PATH
