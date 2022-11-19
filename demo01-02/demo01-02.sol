contract Hello {
    // 24541
    // 这是存储在区块链里面的
    string public message = "Hello World!"; // 状态变量

    // 函数
    // 24505
    function fn1() public view returns (string memory) {
        return message; 
    }    

    // 21827，这是存储在内存，运行完毕就消失了
    function fn2() public pure returns(string memory) {
        return "Hello World2!";
    }

    // 21906 函数包装一层
    function fn3() public pure returns(string memory) {
        return fn2(); // 使用方法: 函数调用函数，没有this，直接调用
    }
}