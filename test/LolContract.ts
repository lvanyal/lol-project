import { time, loadFixture } from "@nomicfoundation/hardhat-network-helpers";
import { anyValue } from "@nomicfoundation/hardhat-chai-matchers/withArgs";
import { expect } from "chai";
import { ethers } from "hardhat";
import { Contract, Signer } from "ethers";


describe('LOL', () => {
    const NAME = 'LolName';
    const SYMBOL = 'LOL';

    let lolContract: Contract;
    let owner: Signer;
    let user1: Signer;
    let user2: Signer;

    beforeEach(async function () {
        const LolContract = await ethers.getContractFactory("LolContract");
        lolContract = await LolContract.deploy(NAME, SYMBOL);
        await lolContract.deployed();

        [owner, user1, user2] = await ethers.getSigners();
    });


    it("should mint meme", async function () {
        const tokenId = await _mintMeme(lolContract, owner);

        const tokenOwner = await lolContract.ownerOf(tokenId);
        expect(tokenOwner).to.equal(await owner.getAddress());
    });

    it("should allow a user to vote for a meme", async function () {
        const tokenId = await _mintMeme(lolContract, owner);

        await lolContract.connect(user1).addLol(tokenId);
        const votes = await lolContract.getLols(tokenId);
        expect(votes).to.equal(1);
    });

    it("should not allow a user to lol again for the same meme", async function () {
        const tokenId = await _mintMeme(lolContract, owner);

        await lolContract.connect(user1).addLol(tokenId);
        await expect(lolContract.connect(user1).addLol(tokenId)).to.be.revertedWith("You have already loled for this meme");
    });

    it("should retrieve the correct lol count for a meme", async function () {
        const tokenId = await _mintMeme(lolContract, owner);

        await lolContract.connect(user1).addLol(tokenId);
        await lolContract.connect(user2).addLol(tokenId);
        const lols = await lolContract.getLols(tokenId);
        expect(lols).to.equal(2);
    });

});

async function _mintMeme(lolContract: Contract, owner: Signer) {
    const tokenIdPromise = new Promise((resolve) => {
        lolContract.once("MemeMinted", (memeId, memeURI) => {
            resolve(memeId);
        });
    });

    const mintTx = await lolContract.connect(owner).mintMeme("https://tokenuri.com/1");
    const tokenId = await tokenIdPromise;
    return tokenId;
}
