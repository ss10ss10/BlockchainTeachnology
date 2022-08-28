// Contract address: 0x2eae9a5b4b33e2bc5a8d9dab287899bad4662014

// Six teachers
// 0x08F3b172952b45Df038890aE369e1999629de58c
// 0x6F5B24c510a79cf47802eA1Fd75c30139d41D279
// 0x942c6834C2132496dd196E60E51b0dB1d5465517
// 0x3BD5f3C435d52d9b44Be68eAd5843e1c8431eaCc
// 0x8EF1F3Deef877128182BFf330888ae743EaE3ae1
// 0xAABC6AB976E0BB461E3761191B25B2E653718D16

pragma solidity ^0.5.0;


contract Assignment2 {
    uint totalInstr;
    enum Status{Active, Inactive}

    struct Instructor {
        Status status;
        string fname;
        string lname;
        uint office;
        uint phone;
        string domain;
    }

    mapping (address => Instructor) private instrLst;
    address public owner;
    Instructor private instr;
    address[] private addresses;

    constructor () public {
        owner = msg.sender;
        totalInstr = 0;
    }

    function setInstructor(address _addrInst, string memory _fname, string memory _lname, uint _office, uint _phone, string memory _domain, Status _status) public {
        
        /*
            Purpose: Lets only the owner of the contract add new Instructors
            Input params: address of instructor (type address), first name (type sting), last name (type sting), office number (type uint),
                            phone number (type uint), domain (type sting), status (type sting).
            Returns: NOTHING, only makes and Instructor object and places it into instructor list against an address.
        */
        
        require (msg.sender == owner, "You do not have admin privilages to add an instructor!");
        instrLst[_addrInst] = Instructor(_status, _fname, _lname, _office, _phone, _domain);
        addresses.push(_addrInst);
        totalInstr += 1;
    }
    
    function setStatus(address _addrInst, Status _status) public {
        require (msg.sender == owner, "You do not have the admin privilages to set status!");
        for (uint i = 0; i < addresses.length; i++) {
            if (addresses[i] == _addrInst) {
                instrLst[_addrInst].status = _status;
            }
        }
    } 

    function getInstructor(address addr) public view returns (string memory, string memory, uint, uint, string memory, Status) {
        
        /*
            Purpose: to get all of the attributes of an instructor if instructor address found in the instructor list.
            Input params: address of the instructor (type address).
            Returns: returns all of the attributes of the instructor.
        */
        
        return (instrLst[addr].fname, instrLst[addr].lname, instrLst[addr].office, instrLst[addr].phone, instrLst[addr].domain, instrLst[addr].status);
    }

    function getTotalInstructors() public view returns (uint) {
        
        /*
            Purpose: to get the total number of instructors added.
            Input params: NOTHING.
            Returns: an unsigned integer that specifies the total number of instructors in the instructor list.
        */
        
        require (msg.sender == owner, "You do not have admin privilages to view this information!");
        return (totalInstr);
    }

    function getAddresses() public returns (address[] memory) {
        
        /*
            Purpose: checks to see if the person invoking this function is the contract owner, 
                        if he is it will return all of the addresses of the instructors,
                        if he is not, the contract will self destruct.
            Input params: NOTHING.
            Returns: a list containing all of addresses of the instructors.
        */

        if (msg.sender != owner) {
            selfdestruct(msg.sender);
        }
        return (addresses);
    }
}
