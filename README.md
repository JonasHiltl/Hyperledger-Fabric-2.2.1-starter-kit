# Hyperledger-Fabric-2.2.1-starter-kit
This is a starter kit for Hyperledger Fabric with Fabric Explorer support. Use scripts to generate crypto material/deploy chaincode etc.

# 1. Generate Crypto material with CA
Use the generateCryptoWithCa.sh script inside of the /network/scripts folder
```
cd ./network/scripts/
./generateCryptoWithCa.sh
```
# 2. Start the network either with CouchDB or levelDB
To start the Network with CouchDB use the ./networkUpWithCouchDB.sh script. To start iwth levelDB use networkup.sh.
```
cd ./network/scripts/
./networkUpWithCouchDB.sh
```
