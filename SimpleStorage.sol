// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract SimpleStorage {

    uint256 public favoriteNumber;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    Person[] public listOfPeople;

    function store (uint256 _favoriteNumber) public {

    favoriteNumber = _favoriteNumber;
    }


    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name));

    }
}