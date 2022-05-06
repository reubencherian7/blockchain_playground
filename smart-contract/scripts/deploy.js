const hre = require("hardhat");

async function main() {
  const fpCoinFactory = await hre.ethers.getContractFactory("FPCoin");
  const fpCoin = await fpCoinFactory.deploy();

  await fpCoin.deployed();

  console.log("FP Coin deployed to:", fpCoin.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
