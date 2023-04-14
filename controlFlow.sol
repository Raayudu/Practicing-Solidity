//SPDX-License-Identifier:MIT

pragma solidity^0.8.9;

contract flow{
    function canVote(uint8 _age) public pure returns(string memory){
        if(_age >= 18){
            return "can Vote";

        }
        else{
            return "can't Vote";
        }
    }
    function biggOfth(uint _a, uint _b, uint _c)public pure returns(uint){
        if(_a>_b && _a>_c){
            return _a;
        }else if(_b > _a && _b >_c){
            return _b;
        }else if(_c > _b && _c > _a){
            return _c;
        }
        return 0;
    }
function biggOfthree(uint _a, uint _b, uint _c)public pure returns(uint){
        uint big;
        big = _a>_b? _a:_b;
        big = big>_c? big:_c;
        return big;
    }
}