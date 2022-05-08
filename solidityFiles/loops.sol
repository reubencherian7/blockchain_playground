// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract learnLoops {

    uint[4] public myArray;
    uint public range;

    function runLoop() public {

        do {
        myArray[range] = range;
        range++;
        } while (range<myArray.length);
    }

    function runForLoop() public {
        for(uint i = range;range<myArray.length;i++) {
        myArray[range] = range;
        range++;
        }
    }

    uint public totalMarks = 1100;
    uint public passingMarks = 500;

    function checkCondition(uint obtainedMarks) public view returns(string memory) {
        string memory result;
        if (obtainedMarks > passingMarks) {
            return result = "You've passed the exam";
        } else {
            return result = "You're Failed! Meet your Father at home ^^";
        }
    }
}
