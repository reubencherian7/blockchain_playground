// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract pureAndView {

    // state var
    uint age = 30;

    function getViewFunction() public view returns(string memory) {
        string memory person = "John";
        return person;
    }

    function getPureFunction() public pure returns(uint sum) {
        uint number1 = 100;
        uint number2 = 3000;
        sum = number1 + number2;
        return sum;
    }
}
