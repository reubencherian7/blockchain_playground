// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract arraysInSol {
    // fixed byte array
    bytes5 public fixedByteArr = "zx";
    function setArr() public {
        fixedByteArr = "some";
    }
    
    // dynamic sized byte array 

    bytes public dynamicSizedByte = "xyz";

    function push() public {
        dynamicSizedByte.push('a');
    }

    function getValue(uint value) public view returns(bytes1) {
        return dynamicSizedByte[value];
    }

        function getLength() public view returns(uint) {
        return dynamicSizedByte.length;
    }
}