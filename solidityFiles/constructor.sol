// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract scConstructor {
    uint public personAge;

    constructor(uint age) {
        personAge = age;
    }
}