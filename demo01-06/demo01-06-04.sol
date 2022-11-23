// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Demo {
    bytes public inputData1;
    bytes public inputData2;

    // 类型只能是bytes
    fallback (bytes calldata input) external  returns (bytes memory output){
        inputData1 = input;
        inputData2 = msg.data; // input 等于 msg.data，可以用abi.decode解出来
        return input;
    }
}