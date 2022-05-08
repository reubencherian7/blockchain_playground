// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract mappingTypes {

    struct Employee {
        string name;
        string skills;
    }

    mapping(uint => string) public getData;
    mapping(uint => Employee) public getEmployeeData;
    function setter(uint key, string memory name) public {
        getData[key] = name;
    }
    function setter(uint key, string memory name, string memory skills) public {
        getEmployeeData[key] = Employee(name, skills);
    }

}