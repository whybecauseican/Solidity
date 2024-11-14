

# MyToken Smart Contract

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Contract Details](#contract-details)
  - [Public Variables](#public-variables)
  - [Functions](#functions)
    - [Mint Function](#mint-function)
    - [Burn Function](#burn-function)
- [Usage](#usage)
  - [Prerequisites](#prerequisites)
  - [Deployment](#deployment)
- [Requirements](#requirements)
- [License](#license)

## Overview
`MyToken` is a Solidity smart contract that represents a basic token with minting and burning capabilities. This contract manages a token’s total supply and individual balances, providing a foundation for understanding and working with tokens on a blockchain. The mint and burn functions allow tokens to be created and destroyed, giving developers a simple yet functional token management system.

## Features
- **Token Information**: Public variables for token name, abbreviation, and total supply.
- **Balance Tracking**: A mapping that maintains the balance of each address.
- **Minting**: Ability to increase the token supply and assign tokens to specific addresses.
- **Burning**: Ability to reduce the token supply by destroying tokens from a specified address, with a check to prevent burning more tokens than an address holds.

## Contract Details

### Public Variables
- **`tokenName`**: The name of the token, defaulted to `"META"`.
- **`tokenAbbrv`**: The abbreviation of the token, defaulted to `"MTA"`.
- **`totalSupply`**: The total supply of tokens, initialized at 0.
- **`balances`**: A mapping of each address to its token balance.

### Functions

#### Mint Function
`mint(address _address, uint _value)`
- **Description**: Creates `_value` new tokens and assigns them to `_address`.
- **Effects**:
  - Increases `totalSupply` by `_value`.
  - Increases `balances[_address]` by `_value`.
- **Usage Example**:
  ```solidity
  MyToken.mint(0xAddressHere, 100); // Mints 100 tokens to the specified address.
  ```

#### Burn Function
`burn(address _address, uint _value)`
- **Description**: Destroys `_value` tokens from `_address`, reducing the total supply and the address’s balance if it has enough tokens.
- **Conditions**:
  - `_address` must have at least `_value` tokens; otherwise, the burn operation fails.
- **Effects**:
  - Decreases `totalSupply` by `_value`.
  - Decreases `balances[_address]` by `_value`.
- **Usage Example**:
  ```solidity
  MyToken.burn(0xAddressHere, 50); // Burns 50 tokens from the specified address if balance allows.
  ```

### Burn Function Condition
The burn function includes a safety check to ensure that `_address` has enough tokens to complete the burn. If the balance of `_address` is less than `_value`, the burn operation will not execute, preventing unintended token destruction.

## Usage

### Prerequisites
- **Solidity**: Version 0.8.0 or above.
- **Ethereum Environment**: A compatible Ethereum client or test environment (e.g., Remix IDE, Hardhat, or Truffle).

### Deployment
To deploy the `MyToken` contract:
1. Compile the contract in a Solidity environment.
2. Deploy to a blockchain or local Ethereum environment.
3. Interact with the contract functions (e.g., `mint` and `burn`) via the blockchain environment or frontend.

## Requirements
1. Public variables for storing the token name, abbreviation, and total supply.
2. A balance mapping for tracking each address’s token holdings.
3. A mint function that updates `totalSupply` and the balance of the specified address.
4. A burn function that reduces both `totalSupply` and the balance of the specified address, with checks for sufficient balance.

## License
This project is licensed under the MIT License.

