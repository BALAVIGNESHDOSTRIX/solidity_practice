pragma solidity ^0.8.7;

contract ModEx{

    address contractWoner;
    uint root_deposit_amount;

    constructor () {
        contractWoner = msg.sender;
        root_deposit_amount = 100;
    }

    function deposit_money(uint amount) public{
        root_deposit_amount = root_deposit_amount + amount;
    }

    modifier OnlyOwner{
        if(msg.sender == contractWoner){
            _;
        }
    }

    function resetRootAmount() OnlyOwner public{
        root_deposit_amount = 0;
    }

    function viewRootAmount() public view returns(uint){
        return root_deposit_amount;
    }
}