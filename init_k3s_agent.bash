#!/bin/bash

export MASTER_IP="10.0.0.5" 
export REMOTE_USER="azureuser"

scp $REMOTE_USER@$MASTER_IP:/var/lib/rancher/k3s/server/node-token ./node-token
scp user@<master-ip>:/var/lib/rancher/k3s/server/node-token ./node-token

export TOKEN=$(cat ./node-token)

curl -sfL https://get.k3s.io | K3S_URL=https://$MASTER_IP:6443 K3S_TOKEN=$K3S_TOKEN sh -