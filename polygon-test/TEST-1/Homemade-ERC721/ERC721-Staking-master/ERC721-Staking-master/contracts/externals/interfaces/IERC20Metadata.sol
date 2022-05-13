// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './IERC20.sol';
interface IERC20Metadata {

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
}