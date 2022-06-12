// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import './base/Level.sol';
import './Vault.sol';

contract VaultFactory is Level{
    function createInstance(uint _password)  external returns(address){
        Vault vault = new Vault(_password);
        return address(vault);
    }

    function validateInstance(address  _instance)  external returns (bool){
        Vault vault = Vault(_instance);
        return !vault.locked();
    }
}