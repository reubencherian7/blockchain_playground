// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract initialContract {


    function internalFunction() internal pure returns(string memory) {
        return "internal";
    }
// Accessible inside the function
    string public pub = internalFunction();


}

// Accessible in derived contracts
contract second is initialContract {
    string public call = internalFunction();
}
// XXXXX NOT Accessible by other contracts XXXXX
contract third{

    // initialContract i = new initialContract();
    // string public call = i.internalFunction();

}