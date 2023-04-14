//SPDX-License-Identifier:GPL-3.0

pragma solidity ^0.8.6;

    contract Dealer{
        address public immutable Dealer_Address;

        constructor(){
            Dealer_Address = payable(msg.sender);
        }
        modifier isDealer(){
            require (msg.sender == Dealer_Address);
            _;
        }
        modifier isCorrectAmount(){
            require(msg.value == 1 ether,"Insufficient amount");
            _;
        }
    }

