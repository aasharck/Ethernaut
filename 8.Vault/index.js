const { ethers } = require("ethers")

const provider = ethers.providers.getDefaultProvider('rinkeby')
const address = '0xb52d8E0B97a6D12DCeE6Eef0e2dcB2835FBa7a51'

const getSecret = async () =>{
    const secret = await provider.getStorageAt(address, 1);
    console.log(secret);
}

getSecret();
