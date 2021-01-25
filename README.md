# Hyperledger Fabric-2.2.1 starter kit
This is a starter kit for Hyperledger Fabric with Fabric Explorer support. Use scripts to generate crypto material/deploy chaincode etc.

First download the binaries and fabric samples:
```
curl -sSL https://bit.ly/2ysbOFE | bash -s -- 2.3.0 1.4.9
cd fabric-samples/
sudo cp ./bin/* /usr/local/bin
peer version
cd ..
git clone https://github.com/JonasHiltl/Hyperledger-Fabric-2.2.1-starter-kit.git
```
# 1. Generate Crypto material with CA
Use the generateCryptoWithCa.sh script inside of the /network/scripts folder
```
cd ./network/scripts/
./generateCryptoWithCa.sh
```
# 2. Start the network with CouchDB/levelDB
To start the Network with CouchDB use the ./networkUpWithCouchDB.sh script. To start iwth levelDB use networkup.sh.
```
./networkUpWithCouchDB.sh
```
# 3. Create Channel for Org1 and Org2
```
./createChannel.sh
```
# 4. Generate Connection Profile
The ccp-generate script is located inside of the network/organizations folder. The Connection Profile is required for the Application to connect to the network.
```
cd ..
./organizations/ccp-generate.sh
```
You can now find the generated Connection Profiles inside of the Peer Organizations.

# 5. Start the Fabric Explorer to see insights about the network
First change the path to your certificates inside the connection-profile to your newly generated ones inside the organizations folder.
```
cd ../explorer
docker-compose up -d
```
# 6. Stop the Network and Fabric Explorer
```
cd ../scripts
./networkdown.sh
cd ../explorer
docker-compose down
```
