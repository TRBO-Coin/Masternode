# Guide for Multi MN

TRBO Multi Tool script tested on Linux 16.04


Commands to install trbomultitool.sh

`wget https://raw.githubusercontent.com/TRBO-Coin/Masternode/master/trbomultitool.sh`

`chmod +x trbomultitool.sh`

`./trbomultitool.sh`

Alias = Name of your MN, Must all be in lower case with no spaces or special characters

MN key = get this from your control wallets console using the command 

`createmasternodekey`
 **Please enter this very carefully**

Port = Default port is 9533 

RPCport = Default RPCport is 9822

MultiNode note

Swap space only needs to be set up once per server.
To run multiple MN's on one server sharing the same IP on the VPS side you will need to enter a unique Alias, MN key, port and rpc port each time you run trbomultitool.sh.
When setting up your masternode.conf file in your control wallet you will always need to set the port number you selected.

check.sh instructions 

Updated check.sh file for new commands if you are using an older version of this script

`wget https://raw.githubusercontent.com/TRBO-Coin/Masternode/master/check.sh`

`chmod +x check.sh`

The new server option will also add a file in root named check.sh
edit this file using 
nano check.sh
add node alias to "node="
example "node1=alias"
