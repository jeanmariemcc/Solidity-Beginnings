// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Students {
    struct StudentInfo {
        string _name; // we will just use first names
        address[] _addresses; // eth addresses for this student
        uint[] _grades; //just the grade numbers, no class names

    }
    StudentInfo[] public StudentDB; // create an array of type StudentInfo and name it StudentDB

    address teacher = msg.sender; // only the teacher (contract owner) can add a student

    function addStudent (string memory name, address[] memory addresses, uint[] memory grades) public {
        require(msg.sender == teacher, "only the teacher can enter a student record");
        StudentInfo memory newEntry = StudentInfo({
            _name: name,
            _addresses: addresses,
            _grades: grades
        });
        StudentDB.push(newEntry);
        return;
    }

    function getStudent (uint index) view public returns (StudentInfo memory){
        require(index < StudentDB.length, "index is out of range");
        return (StudentDB[index]);

    }

}