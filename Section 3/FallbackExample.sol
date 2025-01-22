// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//                  send Ether
//                       |
//            msg.data is empty?
//                 /           \
//             yes             no
//              |                |
//     receive() exists?     fallback()
//         /        \
//      yes          no
//       |            |
//   receive()     fallback()

contract Fallback {
    event Log(string func, uint256 gas);

    // Fallback function must be declared as external.
    fallback() external payable {
        // send / transfer (forwards 2300 gas to this fallback function)
        // call (forwards all of the gas)
        emit Log("fallback", gasleft());
    }

    // Receive is a variant of fallback that is triggered when msg.data is empty
    receive() external payable {
        emit Log("receive", gasleft());
    }

    // Helper function to check the balance of this contract
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

