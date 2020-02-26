#!/bin/sh
#

#IMPORTANT
#need to replace remote host and config file 
REMOTE_HOST=aws-caliper
rsync -r ./channel-artifacts/mychannel.tx $REMOTE_HOST:/home/ubuntu/workspace/caliper-1.4.4/caliper-benchmarks/channel-artifacts/channel.tx
rsync -r ./channel-artifacts/ $REMOTE_HOST:/home/ubuntu/workspace/caliper-1.4.4/caliper-benchmarks/channel-artifacts/