any private variables can be accessed. you can use the getStorageAt from web3 js
also, variables are packed in 32 bytes per slot.
So, here we just need to access the 5th slot(inluding 0th slot).
and the take the bytes16 of that to get the key.