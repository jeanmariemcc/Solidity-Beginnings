// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract RegistryOfCertificates {
    // set owner on contract initialization
    // so only owner can add a certificate hash
    address owner = msg.sender;

    mapping(string => bool) private certRegistry;


// function examples:
    function addCert (string memory hash) public {
        require ( msg.sender == owner, "only the contract owner can add a certificate");
        certRegistry[hash] = true;
    }

    function checkForCert(string memory hash) view public returns (bool){  

        return certRegistry[hash];
    }
}