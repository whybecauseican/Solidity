# MyToken Smart Contract

## Overview
The `MyToken` smart contract implements a basic token system where users can mint and burn tokens. It allows for managing a token’s total supply and balances for individual addresses. The contract also includes the logic to mint (create) new tokens and burn (destroy) tokens under specific conditions. This contract serves as a foundational example for a simple token system.

## Features
- **Public Variables**: The contract contains public variables for the token’s name, abbreviation, and total supply.
- **Balances**: A mapping that stores the balances of each address.
- **Mint Function**: Allows the creation of new tokens and increases both the total supply and the balance of the specified address.
- **Burn Function**: Allows for the destruction of tokens, which decreases both the total supply and the balance of the specified address.

## Contract Details

### Public Variables
- `string public tokenName`: The name of the token (default value: "META").
- `string public tokenAbbrv`: The abbreviation for the token (default value: "MTA").
- `uint public totalSupply`: The total supply of the token (starts at 0).
- `mapping(address => uint) public balances`: A mapping that tracks the balance of each address.

### Functions

#### `mint(address _address, uint _value)`
- **Purpose**: Increases the total supply and adds tokens to the balance of the specified address.
- **Parameters**:
  - `_address`: The address to receive the newly minted tokens.
  - `_value`: The amount of tokens to mint.
- **Effect**: 
  - Increases `totalSupply` by `_value`.
  - Increases the balance of the specified address by `_value`.

#### `burn(address _address, uint _value)`
- **Purpose**: Reduces the total supply and the balance of the specified address by the given amount.
- **Parameters**:
  - `_address`: The address whose balance will be reduced.
  - `_value`: The amount of tokens to burn.
- **Effect**:
  - Decreases `totalSupply` by `_value`.
  - Decreases the balance of the specified address by `_value` if the balance is sufficient.

### Burn Function Condition
The burn function includes a check to ensure that the address has enough tokens to burn. If the balance of the address is less than the specified burn amount, the burn operation will not occur.

## Requirements
1. Public variables that store the token name, abbreviation, and total supply.
2. A mapping from addresses to their balances.
3. A mint function that increases both the total supply and the balance of the specified address.
4. A burn function that decreases both the total supply and the balance of the specified address, with checks to ensure the sender has enough tokens.
   
## License
This project is licensed under the MIT License.
