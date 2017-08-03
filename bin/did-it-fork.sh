#!/bin/bash

set -e

pivxcli=~/.pivx/pivx-cli

function getBlockNumber() {
  $pivxcli getinfo | grep blocks | sed "s/.*: \([0-9]\+\).*/\1/"
}

function getLocalBlockHash() {
  $pivxcli getblockhash $1
}

function getRemoteBlockHash() {
  curl -# 'http://pivxscan.io/api/getblockhash?index='$1
}

blockNumber=`getBlockNumber`
localBlockHash=`getLocalBlockHash $blockNumber`
remoteBlockHash=`getRemoteBlockHash $blockNumber`

echo '            block: '$blockNumber
echo ' block hash local: '$localBlockHash
echo 'block hash remote: '$remoteBlockHash

if [ $localBlockHash == $remoteBlockHash ]; then
  echo 'GOOD: still on main'
else
  echo 'BAD: you are on a fork, got to re-sync'
fi

exit 0
