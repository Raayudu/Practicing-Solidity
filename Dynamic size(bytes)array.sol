//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract DynamicArray {
    uint256[] public numbers;

    function insertElement(uint256 item) public {
        numbers.push(item);
    }

    function getElement(uint256 i) public view returns (uint256) {
        if (i < numbers.length) {
            return numbers[i];
        }
        return 0;
    }

    function getlrngth() public view returns (uint)
    {
        return numbers.length;
    }
}
