// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script, console2} from "forge-std/Script.sol";
import {CrowdFunding} from "../src/CrowdFunding.sol";

contract DeployCrowdFunding is Script {
    function run() external {
        vm.startBroadcast();

        CrowdFunding crowdFunding = new CrowdFunding();
        console2.log("CrowdFunding deployed at:", address(crowdFunding));

        vm.stopBroadcast();
    }
}
