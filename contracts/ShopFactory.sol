// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;
import './Shop.sol';
contract Factory  {

    function createInstance() public returns(address){
        Shop _shop = new Shop();
        return address(_shop);
    }

    function validateInstance(address _instance)   public returns(bool) {
        Shop _shop=  Shop(_instance);
        return _shop.price()<100;
    }

}