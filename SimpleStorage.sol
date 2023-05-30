// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage{ //created contract of name simple storage
    uint256 age = 6; //created an unassigned integer of value 6 (since not public its visibility is default -internal)

    struct People { // created data of type struct
        string person;
        uint256 birthPosition;
    }

    People[] public person; //created an array object (person) of type favouriteMeal

    mapping (string => uint256) public showBirthPosition; //mapping of name to birth position (string to unsigned integer)

    function newAge() public {
       age += 1;
    }

    function getAge() public view returns(uint256) {
        return age;
    }

    function addPerson(string memory _person, uint256 _birthPosition) public{
        People memory choice = People({person : _person, birthPosition : _birthPosition});
        person.push(choice); //or person.push(People({person: _person, birthPostion: _birthPosition}) - with this we don't have to create the choice var
        showBirthPosition[_person] = _birthPosition;
    }
}

//contract : 0x97CDf7B2eb21c6Cf721E837953324592f9c8b060
