#!/bin/bash

set -e

curl -fsSL https://pgp.mongodb.com/server-8.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/8.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list


sudo apt update
sudo apt install -y mongodb-org



echo 2
echo 136

# sudo systemctl start mongod 
# sudo systemctl enable mongod 
# sudo systemctl status mongod 


echo "" | sudo add-apt-repository ppa:open5gs/latest
sudo apt update
sudo apt install open5gs -y



# sudo systemctl status open5gs-amfd.service
# sudo systemctl status open5gs-upfd.service


sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

 # Create deb repository
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list




curl -fsSL https://open5gs.org/open5gs/assets/webui/install | sudo -E bash -
 # Run Update and Install

 #localhost:9999










sudo systemctl restart open5gs-nrfd
# sudo systemctl status open5gs-nrfd


sudo systemctl restart open5gs-amfd
# sudo systemctl status open5gs-amfd

sudo systemctl restart open5gs-upfd
# sudo systemctl status open5gs-upfd




 ### Enable IPv4/IPv6 Forwarding
sudo sysctl -w net.ipv4.ip_forward=1
sudo sysctl -w net.ipv6.conf.all.forwarding=1

### Enable IPv4/IPv6 Forwarding
$ sudo sysctl -w net.ipv4.ip_forward=1
$ sudo sysctl -w net.ipv6.conf.all.forwarding=1

### Add NAT Rule
$ sudo iptables -t nat -A POSTROUTING -s 10.45.0.0/16 ! -o ogstun -j MASQUERADE
$ sudo ip6tables -t nat -A POSTROUTING -s 2001:db8:cafe::/48 ! -o ogstun -j MASQUERADE

sudo iptables -I INPUT -i ogstun -j ACCEPT