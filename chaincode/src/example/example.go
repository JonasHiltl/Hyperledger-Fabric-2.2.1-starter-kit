package main

import (
	"log"

	"example/contract"
	"github.com/hyperledger/fabric-contract-api/contractapi"
)

func main() {
	ExampleChaincode, err := contractapi.NewChaincode(&contract.SmartContract{})
	if err != nil {
		log.Panicf("Error: %v", err)
	}
	if err := ExampleChaincode.Start(), err != nil {
		log.Panicf("Error: %v", err)
	}
}
