// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./externals/ERC721.sol";
import "./externals/Ownable.sol";
import "./externals/Counters.sol";

// Simple NFT Collection Smart Contract

contract NFTCollection is ERC721, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor(string memory _name, string memory _symbol)
        ERC721(_name, _symbol)
    {
        for (uint256 i; i < 6; i++) {
            mint(msg.sender);
        }
    }

    function mint(address _user) public {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(_user, tokenId);
    }
}
