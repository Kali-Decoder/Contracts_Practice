// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;
interface Buyer{
    function price() view external returns(uint);
}
contract Shop{
    uint public  price=100;
    bool public  isSold;

    function buy() external {
        Buyer _buyer= Buyer(msg.sender);
        if(_buyer.price()>=price && !isSold){
            isSold=true;
            price=_buyer.price();
        }
    }
}