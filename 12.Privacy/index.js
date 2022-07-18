const { ethers } = require("ethers")

const provider = ethers.providers.getDefaultProvider('rinkeby')
const address = '0xF22eb05c929b7cA1b0Be8F949Fd5aB99acC49606'

const getKey = async () =>{
    for(let i = 0; i< 6; i++){
        const secret = await provider.getStorageAt(address, i);
        console.log(secret);
    }
}

getKey();

//0x00000000000000000000000000000000000000000000000000000000be7cff0a - 3130 - 10
//0xfbe67324c211e811630c1d9042ea42c885d7f36eb723d1a8d502cb5d293dcb2e - 323535 - 255

//0x07843cff767e551b184a64ab2cc6909c97d8bda88d80e8bad1feb386543a9f8d - 