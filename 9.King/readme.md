It's simple but tricky.
You need to create a contract and send some ether to it. Then call the transfer function which makes you the king.
then in the receive() external payable function add a simple revert function that fails.
This ensures that you will be the king since the transfer fails.