// ETHERNAUT CHALLENGES- EMMANUEL, 0XfeMMANUEL Using Meta ai

// ETHERNAUT CHALLENGE 1 -HELLO ETHERNAUT
pragma solidity 0.8.0;

contract HelloEthernaut{
    address public owner;
    constructor() public{
        owner = msg.sender;
    }
    function clainOwnership(){
        owner = msg.sender;
    }
}
// so im supposed to deploy the contract then claim the ownership of the contract
// solution -  deploy the contract, call the function become the owner(ms);



// ETHERNAUT CHALLENGE 2 -FALLBACK

contract Fall back {
    adress public owner;
    uint public balance;
 
 constructor(){
    owner = msg.sender;
    balance = 0;
    function sendEther()Public payable{
        balance += msg.value
    }
    fallback() external payable {
        balance += msg.value
    }
 }

}
// so im supposed to ddeploy the contract, send ether with and without using the sendEther function then drain the contracts account
 // solution- deploy, use the functions, sending the contract 0 ether directly will make the contract reset the balance variabl to 0



// ETHERNAUT CHALLENGE 3 -COINFLIP

contract CoinFlip{
    uint 256 public ConsecutiveWins;
    uint256 lastHash;
    address public player;

    constructor() public{
        player= msg.sender;
    }

    function flip(bool guess) public{
        uint 256 blockValue = uint 256(blockhash(block.number-1));
        if(lastHash == blockVvalue){
            revert();
        }
        lastHash = blockValue;
        uint 256 flip = blockValue / (2**256)%2;
        if (flip == uint 256(_guess)){
            consecutiveWins++;
        } else{
            consecutiveWins = 0;
        }
    }
}
//so im supposed to deploy the contract and win 10 consecutive ConsecutiveWins
//solution- calculate the blockhash function using the block.number then confirm the bool;
  
 // ETHERNAUT CHALLENGE 4 -TELLEPHONE

 contract Telephone{
 address pubblic Owner;
 address public x;
 constructor()public{
    owner = msg.sender;
    x = message.sender;
 }

function ChangeOwner(address Owner) public{
    require(tx.origin == owner, "owner can change owner");
    owner = _owner
}
 }
//so im deploy and set owner
///hahahaha, its obvious,just deploy and call the function with the address


// ETHERNAUT CHALLENGE 5- TOLKIEN, lol token

contract Tolken {
  mappping(address => uint256)public balances;
  uint256 publictotalSupply;
constructir()public{
    mapping (address => uint256)public balances;
    uint 256 public totalSupply
}

function transfer(address to, uint256 _value)public{
    require(balances[msg.sender] >= _value, "insufficient balance");
      balances[msg.sender] -= _value;
      balances[to] += _value;
}
function balanceOf(address _owner) public view returns(uint256){
return balances[_owner];
}
function talktuah(address _owner) public view returns(uint256){
return balances[_owner];
}
}

//so im to deploy and dran the contracts funds
// justt deploy then call the transfer function with a huge ammount of money
