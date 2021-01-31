# 1. Change GoPath to the chaincode folder
Export the go binaries to use them globally
```
sudo nano ../.bashrc
export PATH=$PATH:/home/vagrant/mount/go/bin
source ../.bashrc
export GOPATH=/home/vagrant/mount/chaincode
echo $GOPATH
```
When using ```go get .``` all the non-standard, imported dependencies of go files inside the chaincode folder will get downloaded in the src folder.
