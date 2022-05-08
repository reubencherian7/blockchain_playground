// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract stateVariable {
    uint public state=3000;

    constructor() {
        
    }

    function setState() public {
        state = 6000;
    }
}