//SPDX-License-Identifier:MIT

pragma solidity >=0.5.0<0.9.0;

contract array{
    uint[] arr;

    function addElement(uint _element)public{
        arr.push(_element);
    }
    function getArray()public view returns(uint[] memory){
        return arr;
    }
    function popElement()public {
        arr.pop();

    }
    function deleteElement(uint _index)public
{
    delete arr[_index];
}
    function getarraylength() public view returns(uint){
        return arr.length;
    }
    function removeElement(uint _index)public returns(uint[] memory){
        for(uint i = _index; i<arr.length-1;i++){
            arr[i]=arr[i+1];
        }
        delete arr[arr.length-1];
        arr.pop();
        return arr;
    }
    function fillupArray(uint _range)public returns(uint[]memory){
        for (uint i=0;i<_range;i++){
            arr.push(i+1);
        }
        return arr;
    }
}