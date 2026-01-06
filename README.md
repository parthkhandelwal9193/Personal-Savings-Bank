# Personal-Savings-Bank

```solidity
Private Digital Vault using Solidity Smart Contract

Ownership Logic:

"address payable public myself;"
We declare a state variable named 'myself' which holds the owner's Ethereum Address, and also mark it as payable to allow it to receive Ether.

'''constructor(){
    myself = payable(msg.sender);
  } '''
msg.sender is a special variable which stores the address of person deploying the contract.
We mark it as payable and then assign it to 'myself' which effectively makes the deployer the owner of the contract.

We also allow only the owner to withdraw money using a 'require' statement:
require (msg.sender==myself, "Only the owner can withdraw");
It verifies whether the caller's address(msg.sender) matches the owner's address(myself). If it does not match, the transaction reverts.

