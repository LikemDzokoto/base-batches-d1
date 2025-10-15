// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Greeter} from "../src/Greeter.sol";

contract GreeterTest is Test {
    Greeter greeter;

    function setUp() public {
        greeter = new Greeter("Hello, World!");
    }

    function testInitialGreeting()  public view {
        assertEq(greeter.greet(), "Hello, World!");
    }

    function testUpdateGreeting() public {
        greeter.setGreeting("Hello, Solidity!");
        assertEq(greeter.greet(), "Hello, Solidity!");
    }
}