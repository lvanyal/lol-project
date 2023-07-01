// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract LolContract is ERC721URIStorage, ERC721Enumerable {
    using Counters for Counters.Counter;
    Counters.Counter private _memeIds;

    mapping(uint256 => uint256) private lols;
    mapping(address => mapping(uint256 => bool)) private hasLoled;

    event MemeMinted(uint256 indexed memeId, string memeURI);
    event MemeLoled(uint256 indexed memeId, string memeURI);

    constructor(
        string memory name_,
        string memory symbol_
    ) ERC721(name_, symbol_) {}

    function mintMeme(string memory memeURI) public returns (uint256) {
        uint256 newItemId = _memeIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, memeURI);

        _memeIds.increment();
        emit MemeMinted(newItemId, memeURI);

        return newItemId;
    }

    function addLol(uint256 memeId) external {
        require(ownerOf(memeId) != address(0), "Meme does not exist");
        require(
            !hasLoled[msg.sender][memeId],
            "You have already loled for this meme"
        );

        lols[memeId]++;
        hasLoled[msg.sender][memeId] = true;
    }

    function getLols(uint256 memeId) external view returns (uint256) {
        require(ownerOf(memeId) != address(0), "Meme does not exist");
        return lols[memeId];
    }

    modifier tokenExists(uint256 memeId) {
        require(ownerOf(memeId) != address(0), "Token does not exist");
        _;
    }

    modifier hasNotLoled(uint256 memeId) {
        require(
            !hasLoled[msg.sender][memeId],
            "You have already loled for this meme"
        );
        _;
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId,
        uint256 batchSize
    ) internal override(ERC721, ERC721Enumerable) {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    function _burn(
        uint256 tokenId
    ) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function tokenURI(
        uint256 tokenId
    ) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC721URIStorage, ERC721Enumerable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
