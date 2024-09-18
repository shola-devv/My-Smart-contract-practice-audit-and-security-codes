pragma solidity ^0.6.0;

contract Token {
 mapping(address =>  uint) balances;
 
 constructor()public {
    balances[msg.sender] = 1 ether;
 }
 function transfer(sddress to, uint amount) public {
    require(balances[msg.sender] >= amount);
    balances[msg.sender] -= amount;
    balances[to] += amount;
 }
 function balanceOf(address who) public view returns(uint) {
    return balances[who];
 }
}