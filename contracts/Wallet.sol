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





}

























