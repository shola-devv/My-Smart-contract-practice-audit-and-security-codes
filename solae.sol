pragma solidity >=0.4.22 <0.9.0;


//initializes my faucet contract
contract myFaucet{

   //creates a function that lets withdrawals happen
    function Wuithdraw(uint w_amount) public {
   require(w_amount >= 1000000000);
    
    //sends the sender the amount inputed
    msg.sender.transfer(w_amount);
    }
    //default function thet accepts incomming amount
    fallback() external payable { } 
    
}