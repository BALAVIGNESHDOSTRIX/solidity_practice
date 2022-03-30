pragma solidity ^0.8.7;

contract MapEx{

    mapping(address => uint) public balance;

    function deposit_money(uint amount) public {
        balance[msg.sender] = balance[msg.sender] + amount;
    }

    function view_my_balance() public view returns(uint){
        return balance[msg.sender];
    }
}