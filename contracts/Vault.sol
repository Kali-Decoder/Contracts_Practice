// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Vault{
    uint private password;
    bool public locked;

    constructor(uint _password){
        locked=true;
        password=_password;
    }

    function unLock(uint _password) public {
        require(password==_password," Password is wrong ");
        locked=false;
    }
}