pragma solidity ^0.5.0;


contract Activity3 {

    struct Person{
        string name;
        string gender;
        uint dob;
        string major;
    }

    mapping(uint => Person) private people;

    Person public person;

    function setValues(string memory _name, string memory _gender, uint _dob, string memory _major) public {
        person.name = _name;
        person.gender = _gender;
        person.dob = _dob;
        person.major = _major;
    }

    function getName() public view returns(string memory) {
        return person.name;
    }

    function getGender() public view returns(string memory) {
        return person.gender;
    }

    function getDob() public view returns(uint) {
        return person.dob;
    }

    function getMajor() public view returns(string memory) {
        return person.major;
    }

    function addPeople(uint _cnic, string memory _name, string memory _gender, uint _dob, string memory _major) public {
        people[_cnic] = Person(_name, _gender, _dob, _major);
    }

    function getPeople(uint _cnic) public view returns(string memory, string memory, uint, string memory) {
        return (people[_cnic].name, people[_cnic].gender, people[_cnic].dob, people[_cnic].major);
    }
}