// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract initialContract {


    function publicFunction() public pure returns(string memory) {
        return "public";
    }
// Accessible inside the function
    string public pub = publicFunction();


}

// Accessible in derived contracts
contract second is initialContract {

}
// Accessible by other contracts
contract third{

    initialContract i = new initialContract();
    string public call = i.publicFunction();

}