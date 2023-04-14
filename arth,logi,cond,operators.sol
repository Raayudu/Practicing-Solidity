//SPDX-License-Identifier:MIT

pragma solidity^0.8.6;

contract allOperators{

    function multiply(uint)public pure returns(uint z){
        uint  _x;
        uint  _y;
        z= _x*_y;//here we can use +,-,*,/,%,+=,
        return z;//arthamatic operators
    }
    function lesser()public pure returns(bool) {
        uint num1;
        uint num2;//comparison operators
        return num1 <= num2 ;// here we can >,<,>=,<=,!=,+=,-=
    }

       function lesse(uint)public pure returns(uint num5) {
        uint num3;
        uint num4;//bitwise  operators
        num5 = num3 ^ num4;
        return num5;// here we can &,|,^,<<,>>,>>>
    }
    
    function oddorEven(uint _num7) public pure returns(string memory){
        string memory value;
        value = (_num7^2)!=0? "even" : "odd";
        return value;
    }// conditional operators
    function comp(uint _num6)public pure returns(bool){
        return _num6 >= 10 || _num6 <500;//
        //compare operators
    }
    function isOdd(uint _num1) public pure returns(bool){
        bool value;
        value =(_num1%2)==0;//true
        return !value;//false
    }

}