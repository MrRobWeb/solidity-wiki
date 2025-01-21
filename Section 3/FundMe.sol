// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    uint256 public minimumUsd = 1;

    function fund() public payable {
        require(msg.value >= minimumUsd, "Didn't send enough ETH!");

    }

    function getPrice() public view returns (uint256){ 

        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int256 price,,,) = priceFeed.latestRoundData();

        return  uint256(price * 1e10);
    }
    function getConversationRate() public { 


    }

    function getVersion() public view returns (uint256){ 

        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }

    // function withdraw() public {
    
    // }


    
}