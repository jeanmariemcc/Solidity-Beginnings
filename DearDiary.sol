// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract DearDiary {
    string[] private diary;
    address[] private validReaders = [0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db, 0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678 ];
    address private diaryOwner = msg.sender;

    function addDiary(string memory newEntry) public {
        // check to see if this is the owner
        require(msg.sender == diaryOwner, "only the diary owner can add entries");
        // add the new entry
        diary.push(newEntry);
        return;
    }

    function getCount() view public returns (uint){
        return diary.length;
    }

    function readOne(uint entryIndex) view public returns(string memory){
        // range check the entry index
        require(entryIndex < diary.length, "index is out of range");

        bool okReader = false;
        // loop through the valid reader array to see if requestor is on the list

        for(uint i = 0; i < diary.length; i++){
            if(validReaders[i] == msg.sender){
                okReader = true;
            }
        }
        require(okReader == true, "you are not a valid diary reader");
        return (diary[entryIndex]);
    }
}