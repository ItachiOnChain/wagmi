// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import "forge-std/Script.sol";
import "../src/TokenFactory.sol";
import "../src/Token.sol";

contract DeployTokenFactory is Script {
    function run() external {
        // Start the broadcasting of transactions
        vm.startBroadcast();

        // Deploy the TokenFactory contract
        TokenFactory tokenFactory = new TokenFactory();

        // Log the address of the deployed TokenFactory contract
        console.log("TokenFactory deployed at:", address(tokenFactory));

        // End the broadcasting of transactions
        vm.stopBroadcast();
    }
}