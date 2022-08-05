pragma solidity ^0.5.0;

contract Activity2 {
    function verifyTwoFour(uint num) public {
        require(num % 4 != 0, "Number is divisible by both 4 and 2");
        require(num % 2 != 0, "Number is divisible by 2");
        require(num % 2 == 0, "Number not divisible by 2 and 4");
        require(num % 4 == 0, "Number not divisible by 4");
    }
}