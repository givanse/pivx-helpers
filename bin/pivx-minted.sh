#!/bin/bash

set -e

pivxcli=~/.pivx/pivx-cli

prev=`head -n 1 $HOME/.pivx/balance`;
curr=`$pivxcli getbalance`;
echo $curr > $HOME/.pivx/balance;
new=$(bc <<< $curr-$prev);
echo 'current: '$curr;
echo '   last: '$prev;
echo "    new: $new";

exit 0
