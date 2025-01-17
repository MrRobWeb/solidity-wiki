// SPDX-License-Identifier: MIT
pragma solidity 0.8.28; //solidity version


contract SimpleStorage {

    // default value is 0; 
    // default visibility is "internal"
    // public creates getter as well
    uint256 public myFavoriteNumber; 

    uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Person public pat = Person(7, "Pat");
    // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    // Person public jon = Person({favoriteNumber: 7, name: "Jon"});

    // dynamic array
    Person[] public listOfPeople;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view - disallow to update state 
    // pure - disallow to update and read state 
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }

}