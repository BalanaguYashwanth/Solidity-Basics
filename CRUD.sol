pragma solidity 0.8.0;

contract Kudos{
    
    int mainNum;

    function setNumber(int num) public {
        mainNum = num;
    }
    
    function getNum() public view returns (int) {
        return mainNum;
    }
}
