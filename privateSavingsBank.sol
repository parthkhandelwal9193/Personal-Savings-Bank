// SPDX-License-Identifier: GPL-3.0

// To create a solidity smart contract that acts as a private digital vault
pragma solidity >=0.7.0 <0.9.0;

contract vault{
    address payable public myself;

    constructor(){
        myself = payable(msg.sender);
    }

    function deposit() public payable
    {

    }
    function getBalance() public view returns(uint)
    {
        return address(this).balance;
    }
    function withdraw(uint _amount) public  
    {
        require (msg.sender==myself, "Only the owner can withdraw");
        require (address(this).balance >= _amount, "Insufficient balance in your Private Vault");
        myself.transfer(_amount);
        
    }

}
