// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Demo {
    uint256 public amount;

    constructor() {
        amount = 1;
    }

    function fnEth() public view returns (uint256) {
        return amount + 1 ether;  // 1000000000000000001
    }


    function fnGwei() public view returns (uint256) {
        return amount + 1 gwei;   // 1000000001
    } 

    // 这些后缀不能直接用在变量后面，想要用以太币单位来计算输入参数，可以用下面方式来完成
    function testVar(uint256 amountEth) public view returns (uint256) {
        return amount + amountEth * 1 ether;
    }
}