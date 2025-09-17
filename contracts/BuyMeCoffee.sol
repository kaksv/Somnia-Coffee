
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BuyMeACoffee {
    // Event to emit when a new memo is created
    event NewMemo(
        address indexed from,
        uint256 timestamp,
        string name,
        string message
    );

    // Memo struct to store the details of each memo
    struct Memo {
        address from;
        uint256 timestamp;
        string name;
        string message;
    }

    // List of all memos received
    Memo[] public memos;

    // Address of the contract owner
    address payable owner;

    // Constructor to set the contract owner
    constructor() {
        owner = payable(msg.sender);
    }

    function getMemos() public view returns (Memo[] memory) {
        return memos;
    }
    // Function to buy a coffee and leave a memo
    function buyMeACoffee(string memory _name, string memory _message) public payable {
        // Ensure the sender sent some ether
        require(msg.value > 0, "You need to send some ether");
        owner.transfer(msg.value);  

        // Add the memo to the list of memos
        memos.push(Memo(msg.sender, block.timestamp, _name, _message));

        // Emit the NewMemo event
        emit NewMemo(msg.sender, block.timestamp, _name, _message); 
    }
}

// 0x5FbDB2315678afecb367f032d93F642f64180aa3 deployed smart contract address

//0x5FbDB2315678afecb367f032d93F642f64180aa3 deployment address 2

// 0x3d3212874efB3E770597716d72518c9649FBDAA6 final deployed address

// 0xD5Cdc282BE2e7762Ce9f13684B9430910a38357e
