// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import "@openzeppelin-contracts-5.0.2/token/ERC20/ERC20.sol";

contract Token is ERC20{
    address public admin;

    constructor(string memory name, string memory ticker, uint initialMint) ERC20(name, ticker) {
        _mint(msg.sender, initialMint);
        admin = msg.sender;
    }

    function mint(address to, uint amount) external {
        require(msg.sender == admin, "Only admin can mint");
        _mint(to, amount);
    }

    function burn(address from, uint amount) external {
        require(msg.sender == admin, "Only admin can burn");
        _burn(from, amount);
    }
}