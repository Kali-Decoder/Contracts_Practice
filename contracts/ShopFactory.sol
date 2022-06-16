// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import './base/Level.sol';
import './Shop.sol';
contract Factory is Level {

    function createInstance(address _player)  public returns(address){
        Shop _shop = new Shop();
        return address(_shop);
    }

    function validateInstance(address _instance) override  public returns(bool) {
        Shop _shop=  Shop(_instance);
        return _shop.price()<100;
    }

}