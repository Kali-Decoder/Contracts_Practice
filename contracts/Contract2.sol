// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;
import "./Contract3.sol";

contract Contract2  {
    event ContractCreation(address _newContract);

    function createNewContract3() public returns(address) {

        Contract3 createdContract3 = new Contract3(); 
        emit ContractCreation(address(createdContract3));
        return address(createdContract3); 
    }
}