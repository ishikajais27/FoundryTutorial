// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/**
 * @title Counter
 * @dev A simple contract to demonstrate setting and incrementing a number.
 *
 * Foundry Tools Overview:
 * @notice forge   - build, test, debug, and deploy smart contracts
 * @notice anvil   - run a local Ethereum blockchain for safe testing
 * @notice cast    - interact with deployed contracts, call functions, send transactions
 * @notice chisel  - quickly test Solidity snippets and debug logic
 *
 * Deployment Example:
 * @notice Use forge script with rpc and private key to deploy:
 * forge script script/Counter.s.sol --rpc-url <anvil RPC> --private-key <key> --broadcast
 */
contract Counter {
    /// @notice Stores the current number.
    uint256 public number;

    /**
     * @notice Sets a new value for `number`.
     * @param newNumber The new value to store.
     */
    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    /**
     * @notice Increments the stored number by 1.
     */
    function increment() public {
        number++;
    }
}
