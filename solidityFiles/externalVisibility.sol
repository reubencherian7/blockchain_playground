// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract initialContract {


    function externalFunction() external pure returns(string memory) {
        return "external";
    }
// XXXXX NOT Accessible inside the function XXXXXX
    // string public pub = externalFunction();


}

// XXXXX NOT Accessible in derived contracts XXXXX
contract second is initialContract {
    // string public call = externalFunction();
}
// Accessible by other contracts XXXXX
contract third{

    initialContract i = new initialContract();
    string public call = i.externalFunction();

}