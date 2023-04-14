//SPDX-License-Identifier:MIT

pragma solidity ^0.8.6;

contract demo{
    function payEther()payable public{

    }
    function check_Balance() view public returns(uint){
        return address(this).balance;
    }
    fallback()external payable{
        payable (msg.sender).transfer(msg.value);
    }
    
}
