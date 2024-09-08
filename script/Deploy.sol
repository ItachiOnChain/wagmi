// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import "../lib/forge-std/src/Script.sol";
import "../src/TokenFactory.sol";
import "../src/Token.sol";

contract DeployTokenFactory is Script {
    function run() external {
        // Fetch private key from environment variables
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        // Start broadcasting transactions with the deployer's private key
        vm.startBroadcast(deployerPrivateKey);

        // Deploy the TokenFactory contract
        TokenFactory tokenFactory = new TokenFactory();

        // Log the address of the deployed TokenFactory contract
        console.log("TokenFactory deployed at:", address(tokenFactory));

        // Stop broadcasting
        vm.stopBroadcast();
    }
}
