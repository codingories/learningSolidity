// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Payable {
   event Log(string funName, address from, uint256 value, bytes data);
   function deposit() external payable {}
   // 通过balance属性，查看余额
   function getBalance() external view returns (uint256) {
       return address(this).balance;
   }

   fallback() external payable {
       emit Log("fallback", msg.sender, msg.value, msg.data);
   }
}