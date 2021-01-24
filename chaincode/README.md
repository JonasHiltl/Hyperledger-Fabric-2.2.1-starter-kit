# 1. Change GoPath to the chaincode folder
```
export GOPATH=/home/vagrant/mount/chaincode
```
When using ```go get .``` all the non-standard, imported dependencies of go files inside the chaincode folder will get downloaded in the src folder.