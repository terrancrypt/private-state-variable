// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract PasswordStore {
    error PasswordStore__NotOwner();

    address private s_owner;
    string private s_password;

    event SetNetPassword();

    constructor() {
        s_owner = msg.sender;
    }

    function setPassword(string memory newPassword) external {
        s_password = newPassword;
        emit SetNetPassword();
    }

    function getPassword() external view returns (string memory) {
        if (msg.sender != s_owner) {
            revert PasswordStore__NotOwner();
        }
        return s_password;
    }
}
