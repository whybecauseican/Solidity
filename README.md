# NewToken Smart Contract

This project is a simple **NewToken** smart contract built using Solidity. It allows users to mint and burn tokens, providing a basic structure for token management on the Ethereum blockchain. Each token has properties such as name, symbol, and total supply, with functionalities for managing user balances.

## Features
- Mint new tokens to a specified address.
- Burn tokens from a specified address.
- Track total supply and user balances.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Functions](#functions)
- [Contributors](#contributors)
- [License](#license)

## Installation

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/your-username/newtoken.git
    ```

2. Navigate to the project directory:

    ```bash
    cd newtoken
    ```

3. Open the project files in your preferred text editor or IDE.

## Usage

1. To use the contract, open the Solidity file (`NewToken.sol`) in any environment that can compile Solidity (e.g., Remix).

2. Test the functions by running the following code snippets after deploying the contract:

    ```solidity
    // Minting tokens
    createTokens(address(0xRecipientAddress), 100);

    // Burning tokens
    removeTokens(address(0xHolderAddress), 50);
    ```

3. After running, you can check the balance and total supply to confirm the transactions.

## Functions

### `createTokens(address _recipient, uint256 _value)`
- Mints new tokens to the specified recipient address.

### `removeTokens(address _holder, uint256 _value)`
- Burns tokens from the specified holder's balance, ensuring the balance is sufficient.

## Contributors

- **Gabriel P. Abiog** - Developer  

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
