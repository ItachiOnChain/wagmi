// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import {Test, console} from "forge-std/Test.sol";
import {TokenFactory} from "../src/TokenFactory.sol";
import {Token} from "../src/Token.sol";

contract TokenFactoryTest is Test {
    TokenFactory public factory;

    function setUp() public {
    factory = new TokenFactory();
    }

    // function testCreateToken() public {
    //     string memory name = "My Awesome Token";
    //     string memory ticker = "MAT";
    //     address tokenAddress = factory.createToken(name, ticker);
    //     Token token = Token(tokenAddress);
    //     uint totalSupply = token.totalSupply();
    //     assertEq(token.balanceOf(address(factory)), factory.INITIAL_MINT());
    //     assertEq(totalSupply, factory.INITIAL_MINT());
    //     assertEq(factory.tokens(tokenAddress), true);
    // }

    function test_calcualteRequiredEth() public {
        string memory name = "My Awesome Token";
        string memory ticker = "MAT";
        address tokenAddress = factory.createToken(name, ticker);
        // Token token = Token(tokenAddress);
        uint totalBuyableSupply = factory.MAX_SUPPLY() - factory.INITIAL_MINT();
        uint requiredEth = factory.calcualteRequiredEth(tokenAddress, totalBuyableSupply);
        assertEq(requiredEth, 30*10**18);
    }
}
