// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract PreviousInvoker {
    address private prevInvoker;
    // initialize prevInvoker to address starting the contract
    //prevInvoker = msg.sender;

// functions:

    function getLastInvoker() public returns (bool, address){ 
        // set boolean to false as a default
        bool hasPrevious = false;
        if(prevInvoker != address(0)){
            hasPrevious = true;
        }
        // save old address
        address pastInvoker = prevInvoker;
        // update prevInvoker for this instance
        prevInvoker = msg.sender;
        return(hasPrevious, pastInvoker);
    }

}