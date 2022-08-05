// Q5

pragma solidity ^0.5.0;

contract Third {
    function getBalance () public payable {
    }

    function checkBalance () public view returns (uint) {
        return address(this).balance;
    }

    function getMoney () public payable {
        address payable recipient = msg.sender;
        recipient.transfer(this.checkBalance());
    }

    function setMoney (address payable _addr) public payable {
        _addr.transfer(this.checkBalance());
    }

    function balanceOfAccs (address _addr) public view returns (uint) {
        return _addr.balance;
    }
}
