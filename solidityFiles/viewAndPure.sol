// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract pureAndView {
    uint age = 30;
    
    function getViewFunction() public returns(string memory){
        string memory person = "Renj";
        return age;
    }

    function getPureFunction() pure public returns(uint sum){
        string memory person = "Renj";
        return age;
    }
}