//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;
import "hardhat/console.sol";

contract ArrayTypes {
    // 固定长度 Array
    uint256[8] array1;
    uint256[1] a1;

    bytes1[5] array2;
    bytes1[5] a2;

    address[100] array3;

    // 可变长度 Array
    uint256[] array4;
    bytes1[] array5;
    address[] array6;
    bytes array7;

    // 初始化可变长度 Array
    uint256[] array8 = new uint256[](5);
    bytes array9 = new bytes(9);

    //  给可变长度数组赋值

    // function main() public pure returns (uint256[] memory) {
    //     uint256[] memory arr = new uint256[](3);
    //     arr[0] = 0;
    //     arr[1] = 1;
    //     arr[2] = 3;
    //     return arr;
    // }

    // 结构体 Struct
    struct An {
        uint256 height;
        bool isGood;
    }

    An an;

    // //  给结构体赋值
    // An public an = An(1800, true);

    // An[a] = {
    //     height:1800;
    //     isGood: true;
    // };
    // function main() public pure returns (An memory) {
    //     // An an;
    //     An memory an;
    //     an.height = 190;
    //     an.isGood = false;
    //     return an;
    // }

    function main() public returns (An memory) {
        // An memory an;
        An storage _an = an;
        _an.height = 190;
        _an.isGood = false;
        return _an;
    }

    // 方法1:在函数中创建一个storage的struct引用
    // 方法2:直接引用状态变量的struct
}
