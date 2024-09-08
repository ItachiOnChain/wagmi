## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
forge build
```

### Deploy

We have used the [Linea Sepolia Testnet](https://rpc.sepolia.linea.build)

```shell
 forge script script/DeployTokenFactory.s.sol:DeployTokenFactory --rpc-url $RPC_URL --broadcast --private-key $PRIVATE_KEY
```
