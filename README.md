**Commands to setup the setup the starter files**

```
npx create-next-app@latest .
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p (configs tailwind and postcss created)
In tailwind config.js add below code

```

```
module.exports = {
  content: ["./src/**/*.{html,js}"],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

In styles globals.css add

```

@tailwind base;
@tailwind components;
@tailwind utilities;

```

Moralis

- Register in Moralis
- Like firebase manages crypto backend which has all infrastructure for creating DAPPS.
- Without moralis we need to setup all the nodes. Reinventing wheel and headaches
- Create a testnet server I have chosen Bangalore nearest location with ETH Rinkeby EVM Configuration
- Install SDK using command `npm install moralis react-moralis`
- Create a .env file for connect to Moralis `NEXT_PUBLIC_MORALIS_SERVER , NEXT_PUBLIC_MORALIS_APP_ID`
- Wrap APP.JS file with moralis provider

```
import { MoralisProvider } from 'react-moralis'
<MoralisProvider
  serverUrl={process.env.NEXT_PUBLIC_MORALIS_SERVER}
  appId={process.env.NEXT_PUBLIC_MORALIS_APP_ID}
>
<Component {...pageProps} />
</MoralisProvider>
```

COPY ALL DEPENDENCIES FROM **_https://raw.githubusercontent.com/CleverProgrammers/amazon-blockchain-youtube/main/package.json_**

**WEB3UIKIT** provides the connect wallet functionality with styled button `import { ConnectButton } from 'web3uikit'`

Create CONTEXT API in the root folder for global access (Username, isAuthenticate from Moralis hooks)

Moralis DB --> Custom collections (Based on MongoDB) --> assets(collection name) --> ADD Cols(name,price,src)

Hardhat -> test,deploy and compile smartcontracts `npx hardhat` and `npm install --save-dev @nomiclabs/hardhat-waffle ethereum-waffle chai @nomiclabs/hardhat-ethers ethers`

**VS CODE EXTENSION**

- Solidity (Extension which provides support for solidity language)

**Smart Contracts**

- We use solidity to code the smart contracts for our DAPP
- Open zeppelin for code snippets based on erc standards

**OPENZEPPELIN**

- Library of ETH contracts which follows certain standards. We can build on top of this package
- Create token by creating smart contracts of ERC-20 standards
- **https://docs.openzeppelin.com/contracts/4.x/wizard** playground with solidity code snippets for ERC-20, 721 1155 etc.
- Good read **https://docs.openzeppelin.com/learn/developing-smart-contracts**

Code for getting FP Coins from ether

```
//Condition (require) to check the FP coins that we are getting after trx is correct or not. If there is any error it shows invalid amount of ethers message
function mint(uint256 amount) public payable {
  require(msg.value == amount * 0.0001 ether, "invalid amount of ether");
  ********** after check sending the FP coins to users ************
  _mint(msg.sender, amount);
}
```
