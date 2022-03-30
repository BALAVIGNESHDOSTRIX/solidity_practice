pragma solidity ^0.8.7;

contract StructEx{

    struct Employee{
        uint _id;
        string name;
        uint age;
    }

    Employee emp;

    function add_emp(uint id, string memory name, uint age) public {
        emp = Employee(id, name, age);
    }

    function get_emp() public view returns(uint, string memory){
        return (emp._id, emp.name);
    }
}