// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Script} from "forge-std/Script.sol";
import {PasswordStore} from "src/PasswordStore.sol";

contract DeployPasswordStore is Script {
    function run() external returns (PasswordStore) {
        vm.startBroadcast();
        PasswordStore passwordStore = new PasswordStore();
        passwordStore.setPassword("helloPass");
        vm.stopBroadcast();

        return passwordStore;
    }
}
