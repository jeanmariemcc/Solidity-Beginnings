// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

contract Lambo {
    address owner = msg.sender;

    modifier onlyOwner() {
        require(owner == msg.sender, "Only the owner has authorization for this funtion");
        _;
    }

    function getBalance () public view onlyOwner returns (uint){
        //return (balanceOf[owner]);
        return address(this).balance;
    }

    function deposit() public payable { 
        // the following makes sure we do not overflow and 
        //cause more tokens to be transferred
        require(address(this).balance + msg.value > address(this).balance, "overflow");
        // amount comes through message
    }

    function kill () public payable onlyOwner {

        // now transfer
        payable(owner).transfer(address(this).balance);

        selfdestruct(payable(owner));
        // note once selfdestructed, the functions are still accessible
        // the ether transferred just goes no where!

    }


}
