#!/bin/bash

sudo ./teardownFabric.sh
rm -rf ~/.composer
rm -rf ~/.composer-credentials
rm -rf ~/.composer-connectionProfiles

./createPeerAdminCard.sh  --host hypervault.tech

sudo ./startFabric.sh