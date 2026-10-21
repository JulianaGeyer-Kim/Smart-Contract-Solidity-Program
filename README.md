# Smart-Contract-Solidity-Program

A beginner Solidity smart contract that stores a person's first name, last name, major, and minor, with functions to set and read each value. Written for my blockchain course.

## Overview

The contract `MySimpleContract` keeps four private string variables and exposes public functions to update and read them. It's a small example of how a smart contract stores and returns data.

## Features

- Stores four values in contract state: first name, last name, major, and minor
- A single setter function, `setPersonData`, updates all four values at once
- Separate getter functions return each value
- Uses `view` functions, so reading data costs no gas

## Contract Functions

| Function | Description |
|----------|-------------|
| `setPersonData(_firstName, _lastName, _major, _minor)` | Saves all four values to the contract |
| `getFirstName()` | Returns the stored first name |
| `getLastName()` | Returns the stored last name |
| `getMajor()` | Returns the stored major |
| `getMinor()` | Returns the stored minor |

## Code Preview

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract MySimpleContract {
    string private firstName;
    string private lastName;
    string private major;
    string private minor;

    function setPersonData(
        string memory _firstName,
        string memory _lastName,
        string memory _major,
        string memory _minor
    ) public {
        firstName = _firstName;
        lastName = _lastName;
        major = _major;
        minor = _minor;
    }

    function getFirstName() public view returns (string memory) {
        return firstName;
    }
    // ...other getters in SimpleStorage.sol
}
```

## Requirements

- Solidity `>=0.4.0 <0.9.0`

## How to Run

The easiest way to test the contract is in the browser with Remix:

1. Go to [remix.ethereum.org](https://remix.ethereum.org) and create a new file named `SimpleStorage.sol`.
2. Paste the contents of `SimpleStorage.sol` from this repository.
3. In the **Solidity Compiler** tab, click **Compile**.
4. In **Deploy & Run Transactions**, keep the environment as **Remix VM** and click **Deploy**.
5. Expand the deployed contract, call `setPersonData` with sample values (strings in quotes, such as `"Alex"`), and click **transact**.
6. Click the getter buttons to read the values back.

## Notes

- Variables marked `private` are not hidden on a blockchain. Anyone can read them, so only sample data should be used.
- This contract is for learning purposes and has not been deployed to a public network.

## Skills Demonstrated

- Writing a smart contract in Solidity
- State variables and data locations (`memory`)
- Public setter and getter functions
- Using `view` functions
- Testing with Remix IDE

## License

Released under the MIT License.

## Author

Juliana Geyer-Kim – [GitHub Profile](https://github.com/JulianaGeyer-Kim)
