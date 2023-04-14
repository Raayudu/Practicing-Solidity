//SPDX-Licence-Identifier:GPL-3.0
pragma solidity ^0.8.5;


contract Gasprice{
    function gasprice() public view returns(uint256){
        return tx.gasprice;

}
}
