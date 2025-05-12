#!/bin/bash

export MASTER_IP="20.61.112.89"
export MASTER_USER="azureuser"

mkdir -p ~/master_info

# Copying the master token file from the master node
scp -i ~/.ssh/Test1_key.pem $MASTER_USER@$MASTER_IP:~/master_info.yaml ~/master_info/

# Reading the yaml file to get the k3s token
export K3S_TOKEN =$(grep -oP '(?<=token: ).*' ~/master_info/master_token.yaml)

curl -sfL https://get.k3s.io | K3S_URL=https://$MASTER_IP:6443 K3S_TOKEN=$K3S_TOKEN sh -