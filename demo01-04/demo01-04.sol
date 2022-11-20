// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// 直接导入
import "./hello.sol";
// contract Hello {
//     string public message = "Hello World!";
// }

import "https://github.com/xxxxx"; // 导入网络文件
// $ npm install @openzeppelin/contracts
// import "@openzepplelin/contracts/token/ERC721/ERC721.sol";

// 遇到冲突
// import * as aaaa from ./hello.sol;
// import "./hello.sol" as aaaa;

// 3. 按需导入
import {symbol1 as aliasName, symbol2} from "filename";


contract Demo {
    // 合约名
    function name() public pure returns(string memory) {
        return type(Hello).name;
    } 

    // 包含合约字节码的内存字节数组
    function creationCode() public pure returns(bytes memory) {
        return type(Hello).creationCode;
    } 
    // 合约运行时的内存字节数组
    function runtimeCode() public pure returns(bytes memory) {
        return type(Hello).runtimeCode;
    } 
}