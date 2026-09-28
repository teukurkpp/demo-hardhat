// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

import {SimpleStorage} from "./SimpleStorage.sol";
import {Test} from "forge-std/Test.sol";

contract SimpleStorageTest is Test {
    SimpleStorage simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    function test_InitialValueIsZero() public view {
        require(simpleStorage.get() == 0, "Initial value should be 0");
    }

    function test_SetAndGet() public {
        simpleStorage.set(42);
        require(simpleStorage.get() == 42, "Value should be 42");
    }

    function testFuzz_SetAndGet(uint256 x) public {
        simpleStorage.set(x);
        require(simpleStorage.get() == x, "Value should match input");
    }
}