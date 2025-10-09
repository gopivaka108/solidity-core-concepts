// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionDemo {
    uint public storedNumber;

    // Public function to set a number
    function setNumber(uint _num) public {
        storedNumber = _num;
    }

    // Public view function to get the number
    function getNumber() public view returns (uint) {
        return storedNumber;
    }

    // Pure function that returns a calculated value
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    // Private function (not accessible outside)
    function double(uint x) private pure returns (uint) {
        return x * 2;
    }
}
