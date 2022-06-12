// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;
import "./Contract2.sol"; 
contract Contract1 {
    Contract2 I; 
     constructor(address Contract2Address){
        I =  Contract2(Contract2Address); 
    }
    function creation() public returns (address) {
        address theCreatedContract3 = I.createNewContract3();
        return theCreatedContract3; 
    }
}