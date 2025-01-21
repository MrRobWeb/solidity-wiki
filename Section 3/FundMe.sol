// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    uint256 public minimumUsd = 1;

    function fund() public payable {
        require(msg.value >= minimumUsd, "Didn't send enough ETH!");

    }

    function getPrice() public { 

        // return AggregatorV3Interface("0x694AA1769357215DE4FAC081bf1f309aDC325306").version();
    }
    function getConversationRate() public { 
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306


    }

    // function withdraw() public {
    
    // }


    
}