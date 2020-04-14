#/bin/bash

echo "We will update your TRBO Masternode right now" 
sudo apt-get -y install unzip
trbo-cli stop
rm -rf /usr/local/bin/TRBO*
mkdir TRBOUpdated_1.1.0.0
cd TRBOUpdated_1.1.0.0
wget https://github.com/TRBO-Coin/Wallet/releases/download/V1.1/LinuxUbuntu16Daemon_v1.1.tar.gz
tar xzvf LinuxUbuntu16Daemon_v1.1.tar.gz
mv trbod /usr/local/bin/trbod
mv trbo-cli /usr/local/bin/trbo-cli
chmod +x /usr/local/bin/trbo*
rm -rf ~/.trbo/blocks
rm -rf ~/.trbo/chainstate
rm -rf ~/.trbo/peers.dat
cd ~/.trbo/
wget https://github.com/TRBO-Coin/Wallet/releases/download/V1.1/bootstrap.zip
unzip bootstrap.zip
echo "addnode=94.177.251.97 add" >> trbo.conf
echo "addnode=185.35.64.141 add" >> trbo.conf
echo "addnode=94.177.242.241 add" >> trbo.conf
echo "addnode=78.141.204.119 add" >> trbo.conf
echo "addnode=213.136.86.60 add" >> trbo.conf
cd ..
trbod -daemon
sleep 10s
trbo-cli addnode 94.177.251.97 onetry
trbo-cli addnode 185.35.64.141 onetry
trbo-cli addnode 94.177.242.241 onetry
trbo-cli addnode 78.141.204.119 onetry
trbo-cli addnode 213.136.86.60 onetry

echo "Masternode Updated!"
echo "Please wait few minutes and start your Masternode again on your Local Wallet"
