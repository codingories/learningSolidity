// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Demo {
    event Log(string funName, address from, uint256 value, bytes data);

    receive() external payable {
        // receive 被调用的时候不存在 msg.data，所以不使用这个，直接用空字符串
        emit Log("receive", msg.sender, msg.value, "");
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}