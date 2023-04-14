//SPDX-License-Identifier:GPL-3.0

pragma solidity^0.8.6;

contract dynamicarr{

    uint[] public arr;
    string[] array;

    
    function popElement()public{
        return arr.pop();
    }
    function len()public view returns(uint){
        return arr.length;
    }
    

    function push(string calldata _text) external {
        array.push(_text);
    }

    function get() external view returns(string[] memory) {
        return array;
    }
}