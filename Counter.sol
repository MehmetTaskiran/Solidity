// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Example {
    address owner;

    struct Counter{
        uint number;
        string description;
    }

    Counter counter;

    modifier onlyOwner{
        require (owner == msg.sender, "Only owner can call this function");
        _;
    }

    constructor(uint initial_value, string memory description){
        owner=msg.sender;
        counter=Counter(initial_value, description);
    }

    function increment_counter() external onlyOwner{
        counter.number+=1;
    }

    function decrement_counter() external onlyOwner{
        counter.number -=1;
    }

    function get_counter_value() external view returns (uint){
        return counter.number;
    } 

    function get_counter_description() external view returns(string memory){
        return counter.description;
    }


}
