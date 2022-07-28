// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract SimpleToken {
    address contractOwner = msg.sender;

    mapping(address => uint256) private tokenOwners;

    constructor(uint256 totalTokens)  {
        // only the contract owner will get to the constructor
        // and therefor set the supply
        tokenOwners[msg.sender] = totalTokens;
    }

// functions:

    function transferTokens(address toAddr, uint256 amtToTransfer) public {
        require(tokenOwners[msg.sender] > amtToTransfer, "insufficient funds");
        require(tokenOwners[msg.sender] + amtToTransfer > tokenOwners[msg.sender], "cannot perform transfer due to overflow");

        // perform transfer
        tokenOwners[msg.sender] -= amtToTransfer;
        tokenOwners[toAddr] += amtToTransfer;
    }

    function checkBalance (address addressToCheck) view public returns(uint256){
        return tokenOwners[addressToCheck];
    }

}