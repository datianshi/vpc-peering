#!/bin/bash

apt-get update
apt-get install strongswan
wget -O /sbin/ipsec.sh https://docs.openvpn.net/wp-content/uploads/ipsec.sh
wget -O /etc/ipsec.conf https://docs.openvpn.net/wp-content/uploads/ipsec.conf
wget -O /etc/ipsec.secrets https://docs.openvpn.net/wp-content/uploads/ipsec.secrets
