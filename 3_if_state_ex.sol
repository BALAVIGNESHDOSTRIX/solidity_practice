pragma solidity ^0.8.7;

contract IFStates{

    uint StoreData = 10;

    constructor() public{
        StoreData = 30;
    }

    function getResult() public view returns(uint){
        if(StoreData >= 30){
            return StoreData;
        }
        return StoreData-30;
    }

    function add() public {
        StoreData = StoreData + 1;
    }

    function minus() public{
        StoreData = StoreData - 1;
    }
}