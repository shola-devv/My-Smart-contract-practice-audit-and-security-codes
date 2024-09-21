solidity
Copy code
pragma solidity ^0.5.0;

contract Token {
    mapping(address => uint) public balances;

    constructor() public {
        balances[msg.sender] = 1000; // Initial balance for the deployer
    }

    function transfer(address to, uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address who) public view returns (uint) {
        return balances[who];
    }
}