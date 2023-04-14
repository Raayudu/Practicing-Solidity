//SPDX-License-Identifier:MIT

pragma solidity^0.8.5;


contract operators{

    function addNumbers(uint16 _num1,uint16 _num2)public pure returns(uint16){
        return _num1 + _num2;
    }

    function isGreater(uint _num3, uint _num4) public pure returns(bool){

        return _num3 >= _num4;
    }

    function oddorEven(uint _num5) public pure returns(string memory){
        string memory value;
        value = (_num5%2)==0? "even" : "odd";
        return value;
    }// conditional operators
    function threedigit(uint _num6)public pure returns(bool){
        return _num6 >= 100 && _num6 <=999;
        //compare operators
    }
    function isOdd(uint _num1) public pure returns(bool){
        bool value;
        value =(_num1%2)==0;//true
        return !value;//false
    }
    function MulFive() public pure returns(uint){
        uint sum =7;
        sum += 7;
        return sum;
    }
}