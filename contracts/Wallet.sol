// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Wallet {

   address public owner;

   uint public value;

   mapping(address=>uint256) public balance;

//deposit event is triggered
//included index variable coz it better way and more organized
event Deposit(address indexed depositer,uint256 amount);

event Withdraw(address indexed withdrawer,uint256 amount);

modifier onlyOwner (){
    require(msg.sender == owner, "Only owner make changes!!");
    _;    // It indicate rest of function code or will be continued from here
}

constructor(){

    owner = msg.sender;

}
//func to deposit crypto in a wallet
//func need to be payable coz we adding amount
function deposit() public payable {
    
require(msg.sender!= address(0) , "This is not a valid Address!");
require (msg.value > 0, "Deposit amount must be greater than zero!");
balance[msg.sender] += msg.value;

//once we deposited the amount the balance changes,now to emit the value
emit Deposit(msg.sender, msg.value);

}

//func to withdraw crypto from  wallet
//func need to be payable coz we receiving amount

function withdraw (uint256 amount) public {

require(msg.sender!= address(0) , "This is not a valid Address!");
require (amount > 0, "withdraw amount must be greater than zero!");
require (amount <= balance[msg.sender] , "Insufficient balance");

//we changed the balance amount 
balance[msg.sender] -= amount;

//payment will be made with help of below line

payable(msg.sender).transfer(amount);

//once we transfered we will call withdrawal event 
emit Deposit(msg.sender, amount);

}

function balanceOf() public view returns(uint256){
    return balance[msg.sender];
}

}





















