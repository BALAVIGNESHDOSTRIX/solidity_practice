pragma solidity ^0.8.7;

contract Mytest1{

	uint value = 1;

	function get_value() public view returns(uint){
		return value;
	}

	function add_more_money() public {
		value += 1;
	}
}