//SPDX-License-Identifier:MIT
pragma solidity ^0.8.5;
contract gasp{
    function gasprice() public view returns(uint256){
        return tx.gasprice;

    }
}
