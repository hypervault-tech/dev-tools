#!/bin/bash
HOST = "fabric-endpoint.hypervault.tech"

# first stop and remove all docker containers 
P1=$(docker ps -q)
if [ "${P1}" != "" ]; then
  echo "Killing all running containers"  &2> /dev/null
  docker kill ${P1}
fi

P2=$(docker ps -aq)
if [ "${P2}" != "" ]; then
  echo "Removing all containers"  &2> /dev/null
  docker rm ${P2} -f
fi

./teardownFabric.sh
rm -rf ~/.composer
rm -rf ~/.composer-credentials
rm -rf ~/.composer-connectionProfiles

echo "Creating a Peer Admin with connection profile pointing to HOST = $HOST"
./createPeerAdminCard.sh  --host $HOST

./startFabric.sh