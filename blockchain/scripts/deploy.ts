import { ethers } from "hardhat";

async function main() {

  const [deployer] = await ethers.getSigners();

  console.log(
    `LolContract deployer ${JSON.stringify(deployer)}`
  );

  const LolContract = await ethers.getContractFactory("LolContract");
  const lol = await LolContract.deploy('LolContract', 'LOL2');

  await lol.deployed();

  console.log(
    `LolContract deployed at address ${lol.address}`
  );

  const transaction = await lol.mintMeme('https://lol.ai?template=1&text=loooooool');
  await transaction.wait();


  console.log(
    `LolContract meme minted`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
