#!/bin/bash

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

./createPeerAdminCard.sh  --host fabric-endpoint.hypervault.tech

./startFabric.sh