// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "@openzeppelin/contracts@4.4.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.4.0/access/Ownable.sol";

contract CNToken is ERC721, Ownable {
    constructor() ERC721("CNToken", "CNT") {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://ipfs.io/ipfs/QmR6AE365Rs2W37NztoAegdpfcTN2jRFvpzH9zYCN4zbXt/";
    }

    function safeMint(address to, uint _tokenID) public onlyOwner {
        _safeMint(to, _tokenID);
    }
}
