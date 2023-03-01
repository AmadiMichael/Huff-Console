# Console.log functionalities for Huff contracts

[Console.huff]("https://github.com/AmadiMichael/Huff-Console/blob/main/src/Console.huff") lets devs visualize the state of the stack, memory and calldata at any point while huffing simply by specifying what they wish to visualize all using foundry's native console logging functionality under the hood.

Huffors can

- log out the stack (up to 16 items deep) as bytes32 values (similar to evm.codes)
- log individual stack items as any variable type (uint256, int256, address, bool, bytes32)
- log out an area of memory/calldata as bytes(dynamic) or as a string.

- (experimental): log out an area in memory as a string and with styling (using foundry's new log styling feature)

Look into [Examples.huff]("https://github.com/AmadiMichael/Huff-Console/blob/main/src/Examples.huff") for some examples of how it can be used and run `forge test -vvv` to see how it displays.

This is still a work in progress and feedback will be deeply appreciated 🐴
