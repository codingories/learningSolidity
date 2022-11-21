// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Payable {
    // payable 标记函数，可以让这个方法接收以太坊
    function deposit1() external payable {

    }

    function deposit2() external {}

    // payable 标记地址
    function withdraw() external {
        // msg.sender表示当前合约的调用者
        // address(this).balance表示当前合约的所有余额
        // .transfer表示转到msg.sender这里，to地址写在前，from地址就是当前的合约
        payable(msg.sender).transfer(address(this).balance);
    }

    // 通过 balance 属性，来看余额
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}