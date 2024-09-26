// preventing reemtrancy attacks
//1 using transfer instead of send


contract new {

require(msg.sender.transfer)
}
//adding the logic before the transfer
contract jjj {
    function() public {


    }
}

//using libraries
// i copied this stuff, more on reading how math operators work in libraries later
 library SafeMath {
 
 function mul(uint256 a, uint256 b) internal pure returns (uint256) {
 if (a == 0) {
 return 0;
 }
 uint256 c = a * b;

 assert(c / a == b);
 return c;
 }
1 
 function div(uint256 a, uint256 b) internal pure returns (uint256) {
 // assert(b > 0); // Solidity automatically throws when dividing by 0
 uint256 c = a / b;
 // assert(a == b * c + a % b); // This holds in all cases
 return c;
 }
 
 function sub(uint256 a, uint256 b) internal pure returns (uint256) {
 assert(b <= a);
 return a - b;
 }
 
 function add(uint256 a, uint256 b) internal pure returns (uint256) {
 uint256 c = a + b;
 assert(c >= a);
 return c;
 }
 }
 
 contract TimeLock {
 using SafeMath for uint; // use the library for uint type
 mapping(address => uint256) public balances;
 mapping(address => uint256) public lockTime;
 
 function deposit() public payable {
 balances[msg.sender] = balances[msg.sender].add(msg.value);
 lockTime[msg.sender] = now.add(1 weeks);
 }
 
 function increaseLockTime(uint256 _secondsToIncrease) public {
 lockTime[msg.sender] = lockTime[msg.sender].add(_secondsToIncrease);
 }
 
 function withdraw() public {
    require(balances[msg.sender] > 0);
require(now > lockTime[msg.sender]);
balances[msg.sender] = 0;
 msg.sender.transfer(balance);
 }
 }



 /a reentrancy honey pot contract
 pragma solidity ^0.4.19;
 
 contract Private_Bank
 {
 mapping (address => uint) public balances;
 uint public MinDeposit = 1 ether;
 Log TransferLog;
 
 function Private_Bank(address _log)
 {
 TransferLog = Log(_log);
 }
 
 function Deposit()
 public
 payable
 {
 if(msg.value >= MinDeposit)
 {
 balances[msg.sender]+=msg.value;
 TransferLog.AddMessage(msg.sender,msg.value,"Deposit");
 }
 }
 
 function CashOut(uint _am)
 {
 if(_am<=balances[msg.sender])
 {
 if(msg.sender.call.value(_am)())
 {
 balances[msg.sender]-=_am;
 TransferLog.AddMessage(msg.sender,_am,"CashOut");
 }
 }
  }
 
 function() public payable{}
 
 }
 
 contract Log
 {
 struct Message
 {
 address Sender;
 string Data;
 uint Val;
 uint Time;
 }
 contract soft {

addy[adrss => uint]; 
function giveFirst( uint money) public{
require(message.sender.balance > money, 'money exists in his account');
addy(msg.sender) = money;
msg.sender.transfer(money);

}

 }
 
 Message[] public History;
//writing a contract that adds two variables sent by the caller, then uses the results to randomly send a small amount of eth its caller and another one that returns the balance of the contract
// also has a function that returns the balance of the contract 

contract sunday{
  uint 256 cool;
uint 256 tool;
//lets go

function(uint 256 one, uint256 two) internal returns(uint 156){
cool = one;
tool = two;
uint 256 result = one + two;
// calculate random no
uint 8 random = math.random * result
//came back here to add this
//forgotten how to calculate a random number in sol, il just skip to the next functionality 
msg.sender.transfer(random)
//returns how mucg sent, i think
//thought aboutt this

return random;

}
//contracts balance 
function balance() public returns(uint 8){
uint8 balance= this.balance();
return balance;
}

}
