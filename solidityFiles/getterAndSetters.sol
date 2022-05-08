// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract gettersAndSetters {
    string company = "Google";
    // string public company= "Google"

    function getterFunction() view public returns(string memory) {
        return company;
    }
    function setterFunction() public {
        company = "Microsoft";
    }

}