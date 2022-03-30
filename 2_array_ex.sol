pragma solidity ^0.8.7;

contract ArrayEx{

    string[] fruit_basket = new string[](10);

    function add_fruit(string memory fruit) public {
        fruit_basket.push(fruit);
    }

    function show_basket() public view returns(string[] memory){
        return fruit_basket;
    }


}