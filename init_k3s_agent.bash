#!/bin/bash

export MASTER_IP="20.61.112.89" 
export REMOTE_USER="azureuser"

export TOKEN="K105cf45522e56a0a38cda2a96d4a1fe39d81f7f62df280100dc2e827c9cade7d8b::server:651136fe1619598a4330a30bfa32caa0"

curl -sfL https://get.k3s.io | K3S_URL=https://$MASTER_IP:6443 K3S_TOKEN=$K3S_TOKEN sh -