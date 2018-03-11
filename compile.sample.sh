#!/bin/bash

cd ../presto-ethereum
mvn clean package
cd ../presto-server-ethereum
cp ../presto-ethereum/target/presto-ethereum-1.0-SNAPSHOT-plugin.tar.gz .
tar xvf presto-ethereum-1.0-SNAPSHOT-plugin.tar.gz -C plugin/ethereum --strip-components=1
rsync -var -e ssh --delete plugin/ethereum user@my_server:~/presto-server-ethereum/plugin
rm presto-ethereum-1.0-SNAPSHOT-plugin.tar.gz



