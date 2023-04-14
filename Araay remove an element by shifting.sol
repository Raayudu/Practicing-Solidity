//SPDX-License-Identifier:MIT

pragma solidity^0.8.5;

contract araay{
    uint[] public arr;

    function examples() public{

        arr = [2,3,4,5,1,0];
        delete arr[1];

    }

    function remove(uint index) public{
        uint i = 5;
        require(index < arr.length-1,"index out of border");
        arr[i] = arr[i+1];
    }


    function test() external{
        arr =[1,2,3,4,5];
        remove(2);
        remove(1);
        
        assert(arr[0]== 1);
        assert(arr[1]== 2);
        assert(arr[2]== 3);
        assert(arr[3]== 4);
        assert(arr[4]== 5);
        assert(arr.length== 4);

        arr = [1];
        remove(0);
        assert(arr.length == 0);
    }

}