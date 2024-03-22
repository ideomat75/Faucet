// SPDX-License-Identifier: CC-BY-SA-4.0
pragma solidity >=0.6.12 <0.9.0;


   
 // Our first contract is a faucet!
contract Faucet {
    // Accept any incoming amount
    receive() external payable {}

    // Give out ether to anyone who asks
    function withdraw(uint withdraw_amount) public {
        // Limit withdrawal amount
        require(withdraw_amount <= 100000000000000000);

        // Send the amount to the address that requested it
        address payable recipient = payable(msg.sender);
        recipient.transfer(withdraw_amount);
    }
}