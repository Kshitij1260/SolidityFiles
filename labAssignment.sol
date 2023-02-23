//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract simpleStorage{

    //initialized as 0, i.e. NULL
    uint256 favoriteNumber;

    //arrays
    uint[3] public people = [1,2,3];
    //func to print the array
    function getArr(uint i) public view returns (uint256){
        return people[i];
    }
    //struct to store name and fav number.
    struct People { 
        uint256 favoriteNumber;
        string name;
    }

    People public person =  People({favoriteNumber:2,name : "patrick"});
    
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retriveFavNum() public view returns(uint256){
        return favoriteNumber;
    }

    // function addPerson(string memory _name, uint256 _favoriteNumber) public {
    //     people.push(People(_favoriteNumber, _name));
    // }


    //decision making, checking if fav number is 2
   
    function isFavNum(uint256 _favoriteNumber) public view returns(bool){
        if(_favoriteNumber==favoriteNumber){
            return true;
        }
        else return false;
    }

    function Addition(uint256 _num1,uint256 _num2) public pure returns(uint256){
        return _num1+_num2;
    }

    function useOfLoops() public pure returns(uint8){
        uint i=5;
        uint8 j=5;
        while(i>0){
            j++;
            i--;
        }
        return j;
    }

}
