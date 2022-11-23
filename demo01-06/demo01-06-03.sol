// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8
contract StoneCat {
    uint256 public age = 0;
    event eventFallback(string);

    // 发送到这个合约的所有消息都会调用此函数（因为该合约没有其它函数）。
    // 向这个合约发送以太币会导致异常，因为 fallback 函数没有 `payable` 修饰符
    // fallback是一个兜底的函数
    // 当fallback执行不存在的方法可以被调用
    fallback() external {
        age++;
        emit eventFallback("fallbak");
    }
}

interface AnimalEat {
    function eat() external returns (string memory);
}

contract Animal {
    // StoneCat address
    // 推荐这种写法
    function test1(address _addr) external returns (string memory) {
        // 通过接口把_addr包装去来
        AnimalEat general = AnimalEat(_addr);
        // 执行合约上的eat方法
        return general.eat();
    }

    // 第二种写法，有点像直接调用CALLDATA，函数内会做一个检测，CALL方法会绕过合约的检测，是比较底层的方法
    // 需要知道: test1和test2两个的方法是一样的
    // 直接写方法是不行的，但是通过.call这种方法可以绕过合约的检测，不检查的，官方不推荐，
    function test2(address _addr) external returns (bool success) {
        AnimalEat general = AnimalEat(_addr);
        (success,) = address(general).call(abi.encodeWithSignature("eat()"));
        require(success);
    }
}