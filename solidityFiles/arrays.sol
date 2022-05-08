// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract arraysInSol {
    // fixed array
    uint[5] public fixedArr = [10,20,30,40,50];
    
    function setFixedArrValue(uint index, uint val) public{
        fixedArr[index]=val;
    }

    function getLength() public view returns(uint){
        return fixedArr.length;
    }
    // dynamic array
    uint[] public dynamicArr;
    // This set function wont work we need to push the values to dynamic arr
    // function setDynamicArrValue(uint index, uint val) public{
    //     fixedArr[index]=val;
    // }
    function pushArr(uint value) public {
        dynamicArr.push(value);
    }
    function popArr() public {
        dynamicArr.pop();
    }
}