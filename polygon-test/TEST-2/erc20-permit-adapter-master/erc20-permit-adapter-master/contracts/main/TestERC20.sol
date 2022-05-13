//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./externals/ERC20.sol";

contract TestERC20 is ERC20 {
    constructor(
        string memory name,
        string memory symbol,
        uint256 supply
    ) ERC20(name, symbol) {
        _mint(msg.sender, supply);
    }
}
