require("@nomiclabs/hardhat-waffle");
// require("dotenv").config({ path: ".env" });

task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
  const accounts = await hre.ethers.getSigners();

  for (const account of accounts) {
    console.log(account.address);
  }
});

module.exports = {
  solidity: "0.8.4",
  networks: {
    ropsten: {
      url: "https://speedy-nodes-nyc.moralis.io/4c43211f09dbd9c7f29b52f1/eth/ropsten",
      // exported private key of account
      accounts: [
        "",
      ],
    },
  },
};
