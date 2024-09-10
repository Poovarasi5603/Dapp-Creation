// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract SetGetData {

uint256 public data;

function setData(uint a) public {
    data = a;
} 
 
function getData() public view returns(uint256) {
    return data;
} 


}











