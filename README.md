# Solidity-Beginnings
First simple programs in Solidity

This repository contains simple Solidity contracts for beginners
The Contracts are in response to Kingsland Homework Exercise 8

Goals
• Acquire practical skills in writing simple smart contracts in Solidity
• Publish and test smart contracts in the Remix IDE.

Contents:
Simple Storage Contract
Write a simple contract in Solidity that keeps in the blockchain an integer variable and provides public functions to read it and to change it.

Incrementor Contract
Write a Solidity contract, as described below:
• The contract holds a certain value
o value (uint) -> not accessible outside the contract
• Anyone can see the function and read the value
o Returns uint
o Not modifying the state of blockchain!
• Anyone can increment the value
o increment(uint delta)
o No output!

Previous Invoker
Write a Solidity contract as described below:
o Keep the address of its previous invoker in the persistent storage → not accessible outside the contract
• getLastInvoker() → returns (bool, address)
• true / false – if a previous invoker exists or not
• The address that has invoked the contract before you
• Accessible from outside the contract
Add appropriate Events for the functions (https://solidity.readthedocs.io/en/latest/contracts.html - events)

Registry of Certificates
Write a simple contract in Solidity that represents a registry of certificates.
• Each certificate has its owner and content calculated as a hash
• The registry holds of all valid certificate hashes stored on the blockchain (as a string)
• Only the owner can add certificate hashes: add(hash)
• You may use this tool https://emn178.github.io/online-tools/sha3_512.html to calculate hashes
• Anyone can verify а certificate by its hash: verify(hash)
Add appropriate events for the functions

Simple Token
Write a contract that represents a simple token
o The initial supply must be set at contract’s creation
▪ This amount must be allocated to the address that creates the contract
o You should store the balances of the addresses → mapping
o Add a functionality that allows for transfer(to, value) of tokens between the address of the contract’s creator and other addresses
▪ The number of tokens for transfer must be bigger than 0
▪ Check for overflow
Add appropriate events for the functions

The Diary
Create a Diary contract in Solidity which:
https://www.kingslanduniversity.com Page 9 of 11
• Keep in the blockchain a string array of facts and a contract owner
• Only contract owner (creator) can
o Add facts (string fact) → accessible outside the contract
• Only people who are approved can read the facts
o getFact(index) – returns specified fact by index [0…count-1]
o Solidity cannot return all facts at once (array of strings)
o Approved addresses are hardcoded into the contract
• Everyone can see how many facts there are in the diary
o count() – returns the count of facts → does not change the state of the contract
• Nobody can delete facts or destroy the contract
Use modifiers where it is appropriate.
Add appropriate events for the functions.

Students Info Tracker
In the first Blockchain Secondary School, every lecturer should store the students’ information. The information should be public and everyone should be able to see it.
o Write a simple contract in Solidity that keeps track of students’ names, addresses (ETH), array of grades and ID number in class:
• Only the owner of the contract (lecturer) can create student profiles and give grades, it does not matter the class/lecture (should be stored in an appropriate data structure)
▪ Hint -> use struct
▪ Students profile should be stored in an array → Students[]
• Everyone can get the information → get(index)
Use modifiers where it is appropriate.
https://www.kingslanduniversity.com Page 10 of 11
Add appropriate events for the functions.

Crowdsale for Lambo
Nowadays, everyone throws a Crowdsale which means investors will give you money just because you make them promises of a better world. Then, you just withdraw the money and go to Bali or buy a Lambo. Let’s make one! Let’s buy a Lambo and go to Bali!
Write a Solidity contract that has a function through which anyone can send it ethers:
• Function deposit() should store ethers to the contract balance
▪ Hint → use payable
• Only the owner of the contract can check the current balance of the contract
https://www.kingslanduniversity.com Page 11 of 11
▪ Contract balance → this.balance
• When the owner wants, he can withdraw the ethers and then kill the contract
▪ Hint → address.transfer(amount)
▪ Hint → selfdestruct(owner)
Use modifiers where it is appropriate.
Add appropriate events for the functions.


