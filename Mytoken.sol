// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;


/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // Public variables
    string public tokenName = "META";  
    string public tokenAbbrv = "MTA";  
    uint public totalSupply = 0;

    // Mapping for address balances
    mapping(address => uint) public balances;

    // Mint function to increase supply and balances
    function mint(address _address, uint _value) public {
        totalSupply += _value;             // Increase total supply
        balances[_address] += _value;      // Add to the balance of the given address
    }

    // Burn function to decrease supply and balances
    function burn(address _address, uint _value) public {
        // Check if the balance of the sender is sufficient for burning
        if (balances[_address] >= _value) {
            totalSupply -= _value;         // Decrease total supply
            balances[_address] -= _value;  // Subtract from the balance of the given address
        }
    }
}
