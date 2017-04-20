#!/bin/bash

export PUBLIC_RIGHT_IP=$(terraform state show aws_vpn_connection.main | grep tunnel1_address | awk '{print $3}')
export PSK_SECRET=$(terraform state show aws_vpn_connection.main | grep tunnel1_preshared_key | awk '{print $3}')
export LOCAL_IP=$(terraform state show aws_instance.strongswan | grep private_ip | awk '{print $3}')
export PUBLIC_LEFT_IP=$(terraform state show aws_eip.eip | grep public_ip | awk '{print $3}')

erb ipsec.conf.tpl > ipsec.conf
erb ipsec.secrets.tpl > ipsec.secrets

scp -i ${PRIVATE_KEY_PATH} ipsec.conf ipsec.secrets ubuntu@${PUBLIC_LEFT_IP}:./
ssh -i ${PRIVATE_KEY_PATH} ubuntu@${PUBLIC_LEFT_IP} 'sudo mv /home/ubuntu/ipsec.* /etc/ && sudo ipsec restart'
