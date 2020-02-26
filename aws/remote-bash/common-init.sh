export GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
export FABRIC_CFG_PATH='/home/ubuntu/workspace/fabric'
export CHANNEL_NAME="mychannel" 
export CHANNEL_BLOCK_FILE=${CHANNEL_NAME}.block

cd ~
echo $FABRIC_CFG_PATH
rm -rf $FABRIC_CFG_PATH
mkdir -p $FABRIC_CFG_PATH
