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

//learning about contract that extends other functions
contract first is myFaucet{
   adress owner;

   contructor shales{
    require(owner == msg.sender);

   }
   function sendFunds()public shales{
        
   }

}
//estimating gas price
var contract = web3.eth.contract(abi).at(address);
var gasEstimate = contract.myAweSomeMethod.estimateGas(arg1, arg2,
 {from: account})

contract caller {
18 
19 function make_calls(calledContract _calledContract) public {
20 
21 // Calling calledContract and calledLibrary directly
22 _calledContract.calledFunction();
23 calledLibrary.calledFunction();
24 
25 // Low-level calls using the address object for calledContract
26 require(address(_calledContract).
27 call(bytes4(keccak256("calledFunction()"))));
28 require(address(_calledContract).
29 delegatecall(bytes4(keccak256("calledFunction()"))));
30 git commit -m"a sexy commit"
31 
32 
33 