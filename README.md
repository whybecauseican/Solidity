To address your mentor's feedback, here's how you can improve your README file and ensure that minting and burning actions display the total supply:

1. **README Improvement**: 
   Based on the provided sample links, you can enhance the README by adding more detailed sections and improving the formatting. You can include more context, usage examples, and information about testing the smart contract. Here's an updated version:

---

# NewToken Smart Contract

A simple yet powerful NewToken smart contract written in Solidity. It allows minting and burning of tokens, providing a basic framework for token management on the Ethereum blockchain. This contract tracks the total supply and individual user balances, making it suitable for tokenized ecosystems.

## Features
- **Minting**: Add new tokens to a specified address.
- **Burning**: Remove tokens from a specified address.
- **Total Supply Tracking**: Keep track of the overall token supply, which changes based on minting and burning.
- **Balance Management**: Monitor individual user balances.

## Table of Contents
1. [Features](#features)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Testing](#testing)
5. [Functions](#functions)
6. [Contributors](#contributors)
7. [License](#license)

## Installation

1. Clone the repository:
   ```bash
  git clone https://github.com/whybecauseican/Solidity.git
   ```

2. Navigate to the project directory:
   ```bash
   cd newtoken
   ```

3. Open the project in your favorite text editor or Solidity development environment (such as [Remix](https://remix.ethereum.org)).

## Usage

To deploy and use the contract:

1. Open the `NewToken.sol` file in Remix.
2. Compile the contract.
3. Deploy the contract to a blockchain network (such as a local or test network).

### Example Snippets

**Mint Tokens:**
```solidity
createTokens(address(0xRecipientAddress), 100);
```

**Burn Tokens:**
```solidity
removeTokens(address(0xHolderAddress), 50);
```

### Checking Total Supply
After minting or burning, you can check the total supply with:
```solidity
totalSupply();
```
This function will show the updated total supply reflecting any minted or burned tokens.

## Testing

To test the functionality of the smart contract:

1. **Deploy the contract**: After deploying, note the initial total supply.
2. **Mint tokens**: Use `createTokens()` to mint tokens. Ensure the total supply updates accordingly.
3. **Burn tokens**: Use `removeTokens()` to burn tokens. Check the total supply after burning to confirm the changes.
4. **View balances**: You can check the balance of any address using `balanceOf(address)`.

Sample test flow:
```solidity
createTokens(address(0xRecipientAddress), 100); // Mint tokens
removeTokens(address(0xHolderAddress), 50); // Burn tokens
totalSupply(); // Check updated total supply
```

## Functions

- `createTokens(address _recipient, uint256 _value)`: Mints new tokens to the recipient’s address, updating their balance and the total supply.
- `removeTokens(address _holder, uint256 _value)`: Burns tokens from the holder’s balance and updates the total supply.
- `totalSupply()`: Returns the current total supply of tokens in circulation.
- `balanceOf(address _owner)`: Returns the balance of the specified address.

## Contributors

- **John Rey Luis Aguillon** - Developer

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

2. **Total Supply Display for Minting/Burning**:
   You can update your smart contract to ensure that every time you mint or burn tokens, the total supply is displayed. Here's how you can modify the Solidity code:

```solidity
// Mint function
function createTokens(address _recipient, uint256 _value) public {
    balances[_recipient] += _value;
    totalSupply += _value;
    emit Transfer(address(0), _recipient, _value);
    
    // Display total supply after minting
    emit TotalSupplyUpdated(totalSupply);
}

// Burn function
function removeTokens(address _holder, uint256 _value) public {
    require(balances[_holder] >= _value, "Insufficient balance");
    balances[_holder] -= _value;
    totalSupply -= _value;
    emit Transfer(_holder, address(0), _value);
    
    // Display total supply after burning
    emit TotalSupplyUpdated(totalSupply);
}

// Event for total supply changes
event TotalSupplyUpdated(uint256 newTotalSupply);
```

This way, every time you mint or burn tokens, the updated total supply will be displayed in the logs, ensuring your mentor's request is met.
