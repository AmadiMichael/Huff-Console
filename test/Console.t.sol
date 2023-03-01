// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {HuffConfig} from "foundry-huff/HuffConfig.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

interface Examples {
    function logTest(
        uint256 start,
        uint256 size,
        uint256 mem_ptr
    ) external pure;
}

contract ConsoleTests is Test {
    Examples public examples;

    function setUp() public {
        examples = Examples(HuffDeployer.config().deploy("Examples"));
    }

    function testVal() public {
        vm.roll(9);
        // 71752852194630 = 0x414243444546
        examples.logTest(71752852194630, 32, 256);
    }
}
