
## Node setup

```
mkdir ~/.pivx
cd ~/.pivx
wget https://github.com/givanse/pivx-helpers/archive/master.zip
unzip master.zip
mv pivx-helpers-master/bin .
echo 'export PATH=$HOME/.pivx/bin:$PATH' >> ~/.bash_paths
source ~/.bash_profile
```

## Upgrading the wallet

Ex:
```
# stop the daemon
pivx-cli stop

# use the link that is appropriate for your architecture
wget https://github.com/PIVX-Project/PIVX/releases/download/v3.0.0/pivx-3.0.0-arm-linux-gnueabihf.tar.gz
tar -xvzf pivx-3.0.0-arm-linux-gnueabihf.tar.gz
cp pivx-3.0.0/bin/* ~/.pivx

# restart the daemon
~/.pivx/pivxd 

# start staking
~/.pivx/bin/unlock-for-staking
```

## Links

 - [Debug Console/ Command-line](https://pivx.freshdesk.com/support/solutions/articles/30000020865-debug-console-command-line)
  - `pivx-cli help`
 - PIVX Rewards Calculator [pivx.cryptonode.co](http://pivx.cryptonode.co/)
 - Block explorers
  - http://www.presstab.pw/phpexplorer/PIVX/index.php
  - https://chainz.cryptoid.info/pivx/
 - [PIVX Mainboard](https://board.net/p/r.cf3dc6ba238931dc444ec10183ab3b05)

