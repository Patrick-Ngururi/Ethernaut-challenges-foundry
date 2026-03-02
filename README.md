## Ethernaut Challenges

This repository contains Ethernaut Challenges solved using Foundry

Link to the Ethernaut challenges: (https://ethernaut.openzeppelin.com/)

### Levels

| Level | 
| ------------- |
| [0. HelloEthernaut](script/Level0Solution/Level0Solution.s.sol) |
| [1. Fallback](script/Fallback/FallbackSolution.s.sol) |
| 2. Fallout Solved in Remix |
| [3. Coin Flip](script/CoinFlip/CoinFlipSolution.s.sol) |
| [4. Telephone](script/Telephone/TelephoneSolution.s.sol) |
| 5. Token solved in Remix |
| [6. Delegation](script/Delegation/DelegationSolution.s.sol) |

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
