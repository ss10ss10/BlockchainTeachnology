// Q1, Q2, Q3

pragma solidity ^0.5.0;

contract First {
    uint public bmi1;
    uint public bmi2;
    uint public average1;
    address public owner;

    constructor () public {
        owner = msg.sender;
    }

    function average (uint one, uint two, uint three, uint four, uint five) public returns (uint) {
        average1 = (one+two+three+four+five)/5;
        return average1;
    }

    function metricBmi (uint weight, uint height) public returns (uint) {
        bmi1 = weight / (height*height);
        return bmi1;
    }

    function englishBmi (uint weight, uint height) public returns (uint) {
        bmi2 = 703 * weight / (height*height);
        return bmi2;
    }

    function add () public returns (address) {
        return owner;
    }
}
