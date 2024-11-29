// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // stating our version

contract SimpleStorage {
    // favourite number is 0 if no value is given
    uint256 public myFavouriteNumber; // 0

    // uint256[] listOfFavouriteNumbers;

    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPeople;

    // static srray
    // Person[4] public people;

    function store(uint256 _favNumber) public {
        myFavouriteNumber = _favNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber, _name));
    }

}