// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;
// import '@openzeppelin/contracts/access/Ownable.sol';
interface Level{
    function createInstance(uint _password)  external  returns (address);
    function validateInstance(address  _instance)  external returns (bool);
}