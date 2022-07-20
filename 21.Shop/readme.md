The contract interfaces using msg.sender. So calling the function with an attack contract and changing the price will help you solve this level.

Contracts can manipulate data seen by other contracts in any way they want.
It's unsafe to change the state based on external and untrusted contracts logic.