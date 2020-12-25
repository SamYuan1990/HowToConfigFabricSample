#!/usr/bin/env bash

curl -vsS https://raw.githubusercontent.com/hyperledger/fabric/release-2.2/scripts/bootstrap.sh | bash
cd ./fabric-samples/test-network
echo y |  ./network.sh down -i 2.2
echo y |  ./network.sh up createChannel -i 2.2
echo y |  ./network.sh deployCC -ccn basic -ccp ../asset-transfer-basic/chaincode-go/ -ccl go
