#!/bin/bash

curl -sfL https://get.k3s.io | sh -

# Wait for the K3S service to start
while ! systemctl is-active --quiet k3s; do
    sleep 1
done

mkdir -p ~/master_info
K3S_TOKEN=$(cat /var/lib/rancher/k3s/server/node-token)

#Saving the token in a yaml file
echo "token: $K3S_TOKEN" > ~/master_info/master_token.yamlgi