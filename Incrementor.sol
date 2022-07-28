// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Incrementor {
    uint storedNum;

    function incrementNum (uint input) public {
        storedNum += input;
    }

    function readNum() view public returns (uint){
        return storedNum;
    }
}