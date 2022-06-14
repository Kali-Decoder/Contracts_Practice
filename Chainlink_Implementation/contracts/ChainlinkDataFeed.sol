// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
contract PriceConsumerV3{
     AggregatorV3Interface public instance ;
     constructor(){
        instance= AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419); 
     }
     function getEthLatestPrice() external view returns(int){
        (,int price,,,) = instance.latestRoundData();
        int x = price;
        return x;
      } 

      function getLatestPriceTimestamp() public view returns (uint256) {
        return 1001 ;//instance.latestTimestamp();
    }
}