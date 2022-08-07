// Contract address: 0xeb7765354c48ddd5d27a0c46f4e3650837e1198a

pragma solidity ^0.5.0;


contract Assignment2_Short {
    
    bool public pause;

    function countVowels(string memory _inp) public returns (uint) {

        /*
            Purpose: counting the total number of vowels that are also lowercase.
            Input params: input string (type string).
            Returns: total number of vowels as unsigned integer (type uint).
        */

        bytes memory temp = bytes(_inp);
        uint vowels = 0;

        for (uint i = 0; i < temp.length; i++) {
            if ( temp[i] == 0x41 || temp[i] == 0x45 || temp[i] == 0x49 || temp[i] == 0x4F || temp[i] == 0x55) {
                pause = true;
            } 
            else if ( temp[i] == 0x61 || temp[i] == 0x65 || temp[i] == 0x69 ||  temp[i] == 0x6F ||  temp[i] == 0x75 ){
                vowels++;
            }
        }
        require(!pause, "Contract is paused!");
        return vowels;
    }

    function electricityBill(uint _units) public view returns (uint) {

        /*
            Purpose: calculating the total electricity bill against the consumed amount of units.
            Input params: input units of electricity consumed (type uint).
            Returns: total bill calculated (type uint).
        */

        require(!pause, "Contract is paused!");
        uint bill = 0;
        uint unitCounter = 101;
        if (_units < 100) {
            return bill;
        }
        else {
            while (unitCounter <= _units) {
                if (unitCounter <= 200) {
                    bill+=5;
                }
                else {
                    bill+=10;
                }
                unitCounter++;
            }
        }

        return bill;
        
    }
}