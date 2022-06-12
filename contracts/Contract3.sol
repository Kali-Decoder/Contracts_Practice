// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Contract3{
    uint256 public num; 
    function storeNum(uint256 newNum) public returns(bool) {
        num = newNum; 
    }
}