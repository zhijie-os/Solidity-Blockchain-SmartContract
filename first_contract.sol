// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    // this will get initialized to 0!
    uint256 favoriteNumber;

    // external: can only be called by an external function
    // internel: can only be called by the internal file, this is default

    // private: only visible for the contract they are defined in and not in derived contracts


    bool favoriteBool;
    bool favoriteBool2;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // this is dynamic
    People[] public people;



    People public person = People({favoriteNumber:2, name:"Patrick"});


    mapping(string => uint256) public nameToFavoriteNumber;


    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view, pure
    // view: reading a state 
    // pure: purely do math, no side affect
    function retrieve() public view returns(uint256)
    {
        return favoriteNumber;
    }

    // memory: only stored in execution
    // storage: will persistent after the function execution
    function addPerson(string memory _name, uint256 _favoriteNumber) public
    {
        people.push(People({favoriteNumber:_favoriteNumber, name:_name}));
        nameToFavoriteNumber[_name]=_favoriteNumber;
    }
    // string = array of bytes



}

