# Hyperledger Composer Dev Tools -- Hypervault's fork

## Creating a PeerAdmin card

The script `./createPeerAdminCard.sh` is used to generate the PeerAdmin card required to start a Fabric network and to deploy new networks onto the Fabric networks. 

Running `./createPeerAdminCard.sh  --help` gives the following output

```
Development only script for Hyperledger Fabric control
Running 'createPeerAdminCard.sh'
FABRIC_VERSION is unset, assuming hlfv12
FABRIC_START_TIMEOUT is unset, assuming 15 (seconds)

Usage: ./createPeerAdminCard.sh [-h host] [-n]

Options:
	-h or --host:		(Optional) name of the host to specify in the connection profile
	-n or --noimport:	(Optional) don't import into card store

Example: ./createPeerAdminCard.sh
```

For hypervault's purpose, run the following command

```
  ./createPeerAdminCard.sh  --host hypervault.tech
```

This sets all the connections to the url `http://hypervault.tech` instead of `http://localhost`. The hostnames are not changed by this flag. 

