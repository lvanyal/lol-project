// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract LolContract is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    uint256 public lols;

    constructor(
        string memory name_,
        string memory symbol_
    ) ERC721(name_, symbol_) {
        lols = 0;
    }

    function mintMeme(address memeCreator, string memory memeURI)
        public
        returns (uint256)
    {
        uint256 newItemId = _tokenIds.current();
        _mint(memeCreator, newItemId);
        _setTokenURI(newItemId, memeURI);

        _tokenIds.increment();
        return newItemId;
    }

    function lol(uint memeId) public {

    }
}
