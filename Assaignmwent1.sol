//SPDX license identifier:MIT
pragma solidity ^0.8.4;
contract decVariables{ //Declaration of Variables and default values in result
    uint8 public num1; //state variables
    uint16 private num2;
    uint32 public num3=500;
    int public num4;
    bool public result;
    bool private answer=true;
    string public str1;
    string public str2="Helloween";
     address public myAddr;
     address public constant Addr= 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
;
     bytes public byt1="0xffff";
     bytes32 public byt2;
     function getNum() public view returns(uint){
         return num3;
     }
     function getBool() public view returns(bool){
         return answer;
     }
     function getStr() public view returns(string memory){
         return str2;
     }
     function getAddr() public pure returns(address){
          return Addr;
     }
     function getByts() public view returns(bytes memory){
         return byt1;
     }
}