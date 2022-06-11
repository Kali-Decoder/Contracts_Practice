// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Vault{
    bytes32 private password;
    bool public locked;

    constructor(bytes32 _password){
        locked=true;
        password=_password;
    }

    function unLock(bytes32 _password) public {
        require(password==_password,"Password is wrong ");
        locked=false;
    }
}