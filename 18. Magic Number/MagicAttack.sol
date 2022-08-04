// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IMagic{
    function setSolver(address _solver) external;
}

contract MagicNumber{

IMagic Magic = IMagic(0xc1d0eCcff900BEC09fCc206612dd04EDb7A7b58D);

function attack() public {
    bytes memory bytecode = hex"600a600c600039600a6000f3602a60005260206000f3";
    bytes32 salt = 0;
    address solver;

    assembly {
        solver := create2(0, add(bytecode, 0x20), mload(bytecode), salt)
    }

    Magic.setSolver(solver);
}
}

