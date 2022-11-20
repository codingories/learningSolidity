// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// NetSpec 描述注释，按照固定的格式做这个注释

/// @title 用来干什么: 一个简单的数据存储演示，用在合约接口和库都可以
/// @author Ories，合约接口库都可以
/// @notice 告诉用户干什么: 您只能将此合约用于最基本的演示，用于状态变量，函数，方法等都可以
/// @dev 告诉开发者干什么: 提供了存储方法/获取方法 ，用于开发者
/// @custom:xxxx 自定义的描述: 这个是实验的测试合约


contract TinyStorage {
    // data
    uint256 storedData; 

    // set
    /// @notice 储存 x
    /// @param _x: storedData 将要修改的值，用于方法，状态变量，错误都可以。
    /// @dev 将数字存储在状态变量 storedData 中
    function set(uint256 _x) public{
        storedData = _x;
    } 
    // get 
    /// @notice 返回存储的值
    /// @return 储存值 ，对函数返回变量的描述
    /// @dev 检索状态变量 storedData 的值
    function get() public view returns(uint256) {
        return storedData;
    }

    /*
     * @notice 第二种写法
     * @param _x: storedData 将要修改的值
     * @dev 检索状态变量 storedData 的值
     */
}