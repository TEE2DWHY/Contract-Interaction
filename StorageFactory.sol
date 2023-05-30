//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "./SimpleStorage.sol"; 

// storage factory contract that contains function that executes the simple-storage contract
contract storageFactory{
    SimpleStorage[] public simpleStorageArray;
    People[] public  person;
    struct People {
       string person;
       uint256 birthPosition;
    }
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    
//ASSIGMENT*- created a function to access the add person function in SimpleStorage from our StorageFactory Contract
    function sfAddPerson(string memory _person, uint256 _birthPosition) public {
        SimpleStorage simpleStorage = simpleStorageArray[0];
        People memory individiual = People({person: _person, birthPosition: _birthPosition });
        person.push(individiual);
        simpleStorage.addPerson(individiual.person, individiual.birthPosition);
    }
}
