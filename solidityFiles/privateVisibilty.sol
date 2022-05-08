// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract initialContract {


    function privateFunction() private pure returns(string memory) {
        return "private";
    }
// Accessible inside the function
    string public pub = privateFunction();


}

// XXXX NOT Accessible in derived contracts XXXXX
contract second is initialContract {
    // string public call = privateFunction();
}
// XXXXX NOT Accessible by other contracts XXXXX
contract third{

//     initialContract i = new initialContract();
//     string public call = i.privateFunction();

}