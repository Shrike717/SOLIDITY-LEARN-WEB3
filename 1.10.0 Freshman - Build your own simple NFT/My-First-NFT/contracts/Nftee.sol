// SPDX-License-Identifier: MIT

// Telling Ethereum which Solidity version to use when running this code
pragma solidity ^0.8.10;

// Import the standard implementation for ERC721 with openzepplin contract
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// NFTee is  ERC721 signifies that the contract we are creating imports ERC721 and follows ERC721 contract from openzeppelin
contract NFTee is ERC721 {

  constructor() ERC721("NFTee", "LEARN-NFT") {
    // Mint 3 NFTs to yourrself
    _mint(msg.sender, 1);
    _mint(msg.sender, 2);
    _mint(msg.sender, 3);
  }
}
