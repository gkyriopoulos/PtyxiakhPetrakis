#!/bin/bash

#Setting up the K3S master node
curl -sfL https://get.k3s.io | sh -

# Wait for the K3S service to start
sleep 30

mkdir -p ~/master_info
K3S_TOKEN=$(sudo cat /var/lib/rancher/k3s/server/node-token)

#Saving the token in a yaml file
echo "token: $K3S_TOKEN" > ~/master_info/master_token.yaml