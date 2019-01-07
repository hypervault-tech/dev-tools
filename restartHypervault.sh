#!/bin/bash

./teardownFabric.sh
rm -rf ~/.composer
rm -rf ~/.composer-credentials
rm -rf ~/.composer-connectionProfiles

./createPeerAdminCard.sh  --host hypervault.tech

./startFabric.sh