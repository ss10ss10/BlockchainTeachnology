// Q4

pragma solidity ^0.5.0;

contract Second {
    uint one;
    uint two;
    uint public mul;
    uint public add;
    uint public sub;
    uint public div;

    function vals (uint _one, uint _two) public {
        one = _one;
        two = _two;
    }

    function sum () public returns (uint) {
        add = one + two;
        return add;
    }

    function diff () public returns (uint) {
        sub = one - two;
        return sub;
    }

    function prod () public returns (uint) {
        mul = one * two;
        return mul;
    }

    function divv () public returns (uint) {
        div = one / two;
        return div;
    }
}
