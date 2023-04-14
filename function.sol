// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

contract FunctionArgument{
function set(uint numb) public view{
numb=_numb;
}
function get() public pure returns(uint){
return numb;
}



}