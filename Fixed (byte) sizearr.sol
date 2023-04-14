//SPDX-License-Identifier:MIT

pragma solidity^0.8.5;

contract demo{
    bytes1 public b1;
    bytes2 public b2;
    bytes3 public b3;
    bytes public str ="vgt";

    function setter()public{
        b1="a";
        b2="b";
        b3="abc";
        
    }
    function pushElement(uint index)public{
        str.push('d');
    }
    function getElement(uint index)public view returns(bytes1){
        return str[index];
    }
    function getLength()public view returns(uint){
        return str.length;
    }
}